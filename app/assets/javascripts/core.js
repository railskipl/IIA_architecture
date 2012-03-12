var textObject = {	
	delay : 500,
	effect : 'replace',
	classColour : 'blue',
	flash : function(obj, effect, delay) {
		if (obj.length > 0) {
			if (obj.length > 1) {
				jQuery.each(obj, function() {
					effect = effect || textObject.effect;
					delay = delay || textObject.delay;
					textObject.flashExe($(this), effect, delay);					
				});
			} else {
				effect = effect || textObject.effect;
				delay = delay || textObject.delay;
				textObject.flashExe(obj, effect, delay);
			}
		}
	},
	flashExe : function(obj, effect, delay) {
		var flash = setTimeout(function() {
			switch(effect) {
				case 'replace':
				obj.toggle();
				break;
				case 'colour':
				obj.toggleClass(textObject.classColour);
				break;
			}
			textObject.flashExe(obj, effect, delay);
		}, delay);
	}
};
$(function() {
	
	textObject.flash($('.flash'), '', 700);
	
	textObject.flash($('.flash-colour'), 'colour', 400);	
	
});