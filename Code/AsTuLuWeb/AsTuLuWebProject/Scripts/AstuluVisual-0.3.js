var spinnerVisible = false;

function ShowProgress() {
    if (!spinnerVisible) {
        $('div#layer').fadeIn("fast");
        $('div#spinner').fadeIn("fast");
        spinnerVisible = true;
    }
}
function HideProgress() {
    if (spinnerVisible) {
        var layer = $('div#layer');
        var spinner = $('div#spinner');
        layer.stop();
        spinner.stop();
        layer.fadeOut('fast');
        spinner.fadeOut('fast');
        spinnerVisible = false;
    }
}