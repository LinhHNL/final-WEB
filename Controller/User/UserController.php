<?php  
require_once '../../model/model/AccountModel.php';
require_once '../../model/model/CustomerModel.php';
require_once '../../model/model/ManagerModel.php';
require_once '../../model/entity/Account.php';
require_once '../../model/entity/Customer.php';
require_once '../../model/entity/Manager.php';
class UserController {
   
    public function login($email,$password){
            $account =  (new AccountModel())->getAcount($email,$password); // thiếu dấu chấm phẩy ở cuối dòng này
            $data = json_decode($account, true);
            
        //    return $account;
           
            if($data['success']) {
                header('Content-Type: application/json');
                // echo $data['account']['role_id'];
                if($data['account']['role_id']==1){ // thiếu dấu bằng ở đây
                    $customer  = (new CustomerModel())->getCustomerByEmail($email);
                    return array( "success" => true,"role"=>$data['account']['role_id'],"user"=>$customer);
                } else {
                    $admin  = (new ManagerModel())->getManagerByEmail($email);
                    return array("success" => true,"role"=>$data['account']['role_id'],"user"=>$admin);
                }
            } else {
                header('Content-Type: application/json');

                return array("success" => false,"message"=>"Đăng nhập thất bại"); // xoá dòng => ở đây và thêm giá trị false vào mảng này
            }
    
    }
    public function registerCustomer($data) {
        $email = $data['email'];
        $password = $data['password'];
        $fullname = $data['fullname'];
        $address = $data['address'];
        $phone = $data ['phone'];
        $account =     (new AccountModel())->addAcount(new Account($email,$password,1));
        $result = json_decode($account, true);
   
        if($result['success']){
            $acc = (new AccountModel())->getAcount($email,$password);
            $acc = json_decode($acc, true);
          

            $customer = (new CustomerModel())->addCustomer(new Customer($fullname,$email,$address,$phone,$acc['account']['id']));
            $customer = json_decode($customer, true);
        //  return $acc['account']['id'];
            if($customer['success']){
                $cus = (new CustomerModel())->getCustomerByEmail($email);
                return array("success" => true,'role' =>1,'user' =>$cus);
            }else {
                return array("success" => false,"message"=>"Đăng ký thất bại"); // xoá dòng => ở đây và thêm giá trị false vào mảng này

            }
        }
        return array("success" => false,"message"=>"Đăng ký thất bại"); // xoá dòng => ở đây và thêm giá trị false vào mảng này

    }
    public function getAllCustomer($page){
        return (new CustomerModel())->getAllCustomer($page);
    }
    public function getAllManager($page){
        return (new ManagerModel())->getAllManager($page);
    }
    public function changePassword($id ,$newPassword,$oldPassword){
        return (new AccountModel())->changePassword($id,$newPassword,$oldPassword);
    }
    public function updateInformationForCustomer($data){
        $email = $data['email'];
        $password = $data['password'];
        $fullname = $data['fullname'];
        $address = $data['address'];
        $phone = $data ['phone'];
        $id = $data['id'];
        $acc = (new AccountModel())->getAcount($email,$password);
        $account = json_decode($acc,true);
        if($account['success']){
            $customer = new Customer($fullname, $email, $address, $phone, "", $id);
            return (new CustomerModel)->updateCustomer($customer);
        }else{
            return json_encode(array("success" => true,"error" => "Sai tài khoản hoặc mật khẩu"));
        }
         
        
    }
    public function deteleManager($email){
        $manager = (new ManagerModel())->deleteManager($email);
        if(!$manager['success']){
            return array("success" =>false,"message"=>"Xóa tài khoản thất bại");

        }
        $acc = (new AccountModel())->deleteAccount($email);
        if(!$acc['success']){
            return array("success" =>false,"message"=>"Xóa tài khoản thất bại");
            
        }
        return array("success" =>true,"message"=>"Xóa tài khoản thành công ");

    }
    public function updateInformationForManager($data){
        $email = $data['email'];
        $password = $data['password'];
        $fullname = $data['fullname'];
        $phone = $data ['phone'];
        $id = $data['id'];
        $acc = (new AccountModel())->getAcount($email,$password);
        $account = json_decode($acc,true);
        if($account['success']){
            $Manager = new Manager($fullname, $email, $phone, "", $id);
            return (new ManagerModel)->updateManager($Manager);
        }else{
            return json_encode(array("success" => true,"error" => "Sai tài khoản hoặc mật khẩu"));
        }
         
        
    }
    public function addManager($data)
{
    $email = $data['email'];
        $password = $data['password'];
        $fullname = $data['fullname'];
        $phone = $data ['phone'];
        $role = $data ['role'];

        $account = (new AccountModel())->addAcount(new Account($email,$password,$role));
        $result = json_decode($account, true);
        if($result['success']){
            $acc = (new AccountModel())->getAcount($email,$password);
            $acc = json_decode($acc, true);
           
            $manage = (new ManagerModel())->addManager(new Manager($fullname,$email,$phone,$acc['account']['id']));
           $manage =  json_decode($manage,true);
        //    return $manager;
          
           if($manage['success']){
                $ma = (new ManagerModel())->getManagerByEmail($email);
                return array("success" => true,'role' =>2,'user' =>$ma);
            }else {
                return array("success" => false,"message"=>"Đăng ký thất bại"); // xoá dòng => ở đây và thêm giá trị false vào mảng này

            }
        }
        return array("success" => false,"message"=>"Đăng ký thất bại"); // xoá dòng => ở đây và thêm giá trị false vào mảng này
}


    public function getAllUser($page){
        $accounts=json_decode( (new AccountModel())->getAllAccounts());
        foreach($accounts as $Account ){
            $AccountID=$Account->getId();
            //$AccountName=$Account->getName();
            //$AcountPhone=$Account->getPhone();
            $AccountPassword=$Account->getPassword();
            //$AccountBirth=$Account->getBirth();
        }
        return $accounts;
    }   

}
?>