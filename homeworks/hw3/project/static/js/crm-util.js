const toSrcImage = function(img){
    return "data:image/png;base64,"+img;
};

const toRawImage = function(img){
    return img.split(",")[1];
};

const ajaxErrorHandler= function(jqXHR,error, errorThrown){
    var errorMessage= JSON.parse(jqXHR.responseText);
    var listOfIds= errorMessage.i18nId.split("|");
    console.log(listOfIds);
    for (var i in listOfIds) {
        toastr.error(i18n.t(listOfIds[i]), "", AppConfig.TOASTR_CONFIG);
    }
};