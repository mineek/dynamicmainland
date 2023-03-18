#import <Preferences/PSListController.h>
#import <Preferences/PSListItemsController.h>
#import <Preferences/PSSliderTableCell.h>
#import <Preferences/PSSpecifier.h>
#import <Preferences/PSTableCell.h>

@interface DMLRootListController : PSListController

@end

@interface NSTask : NSObject
@property (copy) NSArray *arguments;
@property (copy) NSString *launchPath;
- (id)init;
- (void)waitUntilExit;
- (void)launch;
@end