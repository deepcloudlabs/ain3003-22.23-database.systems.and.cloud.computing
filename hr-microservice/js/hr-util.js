var toSrcImage = function (img) {
    if (img.startsWith("data:image"))
        return img;
    return "data:image/png;base64," + img;
};

var toRawImage = function (img) {
    return img.split(",")[1];
};

var ajaxErrorHandler = function (jqXHR, error, errorThrown) {
    var errorMessage = JSON.parse(jqXHR.responseText);
    var listOfIds = errorMessage.i18nId.split("|");
    console.log(listOfIds);
    for (var i in listOfIds) {
        toastr.error(i18n.t(listOfIds[i]), "", AppConfig.TOASTR_CONFIG);
    }
};

var showMessage = function (level, message) {
    toastr[level](message);
}

var showErrorMessage = function (message) {
    toastr.error(message);
}

var showWarningMessage = function (message) {
    toastr.warning(message);
}

var showSuccessMessage = function (message) {
    toastr.success(message);
}

var showInfoMessage = function (message) {
    toastr.info(message);
}

var initializeToastr = function (opts) {
    for (let o in opts) {
        toastr.options[o] = opts[o];
    }
}
