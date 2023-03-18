#import <Foundation/Foundation.h>
#import "DMLRootListController.h"

@implementation DMLRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *respring = [[UIBarButtonItem alloc] initWithTitle:@"Respring" style:UIBarButtonItemStylePlain target:self action:@selector(respring:)];
    self.navigationItem.rightBarButtonItem = respring;
}

- (void)respring:(id)sender {
    UIAlertController *alert = [UIAlertController
        alertControllerWithTitle:@"Respring"
                         message:@"Confirm Respring"
                  preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *defaultAction = [UIAlertAction
        actionWithTitle:@"Cancel"
                  style:UIAlertActionStyleCancel
                handler:^(UIAlertAction *action){
                }];

    UIAlertAction *yes = [UIAlertAction
        actionWithTitle:@"Confirm"
                  style:UIAlertActionStyleDestructive
                handler:^(UIAlertAction *action) {
                    NSTask *t = [[NSTask alloc] init];
                    [t setLaunchPath:@"/usr/bin/killall"];
                    [t setArguments:[NSArray arrayWithObjects:@"SpringBoard", nil]];
                    [t launch];
                }];

    [alert addAction:defaultAction];
    [alert addAction:yes];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
