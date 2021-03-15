@interface MTMaterialView : UIView
@property (nonatomic, assign) NSInteger recipe;
@property (nonatomic, assign) NSInteger configuration;
@property (nonatomic) NSString *recipeName;
@property (nonatomic) NSString *groupNameBase;
@end

@interface CALayer (Undocumented)
@property (assign) BOOL continuousCorners;
@end

%hook MTMaterialView
-(void)_updateRecipeNameIfNeeded {
    %orig;
    if (self != nil && [self.groupNameBase isEqual:@"WGWidgetListViewControllerGroupName"] && ![NSStringFromClass([self.superview class]) isEqualToString:@"WGShortLookStyleButton"]) {
        self.layer.cornerRadius = 21.6;
        self.layer.continuousCorners = YES;
    }
}
%end
