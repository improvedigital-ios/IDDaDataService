//
//  ViewController.m
//  Example
//
//  Created by Андрей on 28.04.2018.
//  Copyright © 2018 Improve Digital. All rights reserved.
//

#import "ViewController.h"
#import "IDDaDataTipsService.h"
#import "IDDaDataOrganizationSuggestionsResponse.h"
#import "IDDaDataOrganizationResponse.h"

static NSString * const kCellIdentifier = @"CellIdentifier";

@interface ViewController () <UITableViewDataSource>

@property (strong, nonatomic) IDDaDataTipsService *dadataService;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IDDaDataOrganizationSuggestionsResponse *organizationResponse;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dadataService = [IDDaDataTipsService new];
    
    // * SETUP API KEY HERE * //
    self.dadataService.apiKey = nil;
    [self.textField.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        
        @weakify(self)
        [[self.dadataService organizationsWithQuery:x] subscribeNext:^(id  _Nullable x) {
            @strongify(self)
            
            self.organizationResponse = x;
            [self.tableView reloadData];
        }];
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.organizationResponse.suggestions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.organizationResponse.suggestions[indexPath.row].unrestricted_value;
    return cell;
}


@end
