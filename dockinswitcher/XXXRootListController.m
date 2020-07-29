#include "xxxRootListController.h"
@interface PSTableCell : UITableViewCell
@end
@interface PSControlTableCell : PSTableCell
- (UIControl *)control;
@end
@interface PSSwitchTableCell : PSControlTableCell
- (id)initWithStyle:(int)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@interface DockInSwitcherSwitch : PSSwitchTableCell
@end

@implementation DockInSwitcherSwitch

-(id)initWithStyle:(int)style reuseIdentifier:(id)identifier specifier:(id)specifier { //init method
	self = [super initWithStyle:style reuseIdentifier:identifier specifier:specifier]; //call the super init method
	if (self) {
		[((UISwitch *)[self control]) setOnTintColor:[UIColor colorWithRed:0.70 green:0.00 blue:0.00 alpha:1.0]]; //change the switch color
	}
	return self;
}

@end

@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void) contactMethod {
	[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://twitter.com/SecondEight1/"]];
}

-(void) donationMethod {
	[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://www.paypal.me/LiberatoAguilar"]];
}

-(void) emailMethod {
	[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"mailto:liberatoalanaguilar@gmail.com"]];
}

- (void) respringboi {

	system("killall -9 SpringBoard");
}
@end
