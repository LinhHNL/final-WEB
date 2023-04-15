<?php 
require_once '../../model/model/PromotionModel.php';
require_once '../../model/entity/Promotion.php';
class PromotionController {
    function getAllPromotions($page) {
        return (new PromotionModel())->getAllPromotion($page);
    }
    function getPromotionById($id) {
        return (new PromotionModel())->getPromotionById($id);

    }
    function getPromotionsVorcher($page) {
        return (new PromotionModel())->getPromotionsVorcher($page);
    }
    function getPromotionsEvent($page) {
        return (new PromotionModel())->getPromotionsEvent($page);
    }
    
    function addPromotion($data){
         $PromotionName = $data['PromotionName'];
         $Description = $data['Description'];
         $StartTime = $data['StartTime'];
         $EndTime = $data['EndTime'];
         $Discount = $data['Discount'];
         $Code = $data['Code'];
         $type = $data['type'];
         $url_image = $data['url_image'];
     
        return (new PromotionModel())->addPromotion(new Promotion($PromotionName, $StartTime, $Description, $EndTime, $Discount, $Code, $type,$url_image));
    }
    function removePromotion($id){
        return (new PromotionModel())->deletePromotion($id);

    }
    function updatePromotion($data){
        $PromotionID = $data['PromotionID'];
        $PromotionName = $data['PromotionName'];
        $Description = $data['Description'];
        $StartTime = $data['StartTime'];
        $EndTime = $data['EndTime'];
        $Discount = $data['Discount'];
        $Code = $data['Code'];
        $type = $data['type'];
        $url_image = $data['url_image'];
        $Promotion = new Promotion($PromotionName, $StartTime, $Description, $EndTime, $Discount, $Code, $type,$url_image,$PromotionID);
        return (new PromotionModel())->updatePromotion($Promotion);

    }
}

?>