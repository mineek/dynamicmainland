#include <Foundation/Foundation.h>
#include <UIKit/UIKit.h>

%hook SBSystemApertureContainerView
-(void)setFrame:(struct CGRect )arg0 {
	if (arg0.size.width > 126) {
		NSLog(@"[DynamicMainland] SBSystemApertureContainerView setFrame: moving down");
		NSLog(@"[DynamicMainland] Width: %f", arg0.size.width);
		arg0.origin.y = arg0.origin.y + 40;
	}
	%orig;
}
%end

%ctor {
	NSUserDefaults* _preferences = [[NSUserDefaults alloc] initWithSuiteName:@"com.mineek.dynamicmainlandprefs"];
	BOOL _enabled = [_preferences objectForKey:@"enabled"] ? [[_preferences objectForKey:@"enabled"] boolValue] : YES;
	if (_enabled) {
		NSLog(@"[DynamicMainland] Enabled");
		%init();
	} else {
		NSLog(@"[DynamicMainland] Disabled, goodbye!");
	}
}