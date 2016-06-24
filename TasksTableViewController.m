//
//  TasksTableViewController.m
//  POPUITableView
//
//  Created by Bryan  Miller on 6/23/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "TasksTableViewController.h"
#import "Task.h"

@interface TasksTableViewController ()

@end

@implementation TasksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tasks  = [NSMutableArray new];
    
    Task * run = [Task new];
    run.title = @"run";
    [self.tasks addObject:run];
    
    Task * walk = [Task new];
    walk.title = @"walk";
    [self.tasks addObject:walk];
    
    Task * jog = [Task new];
    jog.title = @"jog";
    [self.tasks addObject:jog];
    
    Task * jump = [Task new];
    jump.title = @"jump";
    [self.tasks addObject:jump];
    
    Task * stride = [Task new];
    stride.title = @"stride";
    [self.tasks addObject:stride];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];

    Task * task = [self.tasks objectAtIndex:indexPath.row];
    cell.textLabel.text= task.title;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
