extern bool enable;
bool enable = NO;
%hook SBFluidSwitcherViewController
-(void)_updateSwitcherFloatingDockBehaviorAssertion {
  NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.secondeight1.dockinswitcher.plist"];
  enable = [settings objectForKey:@"DockInSwitcherEnable"] ? [[settings objectForKey:@"DockInSwitcherEnable"] boolValue] : NO;
  if (!enable) {
    %orig;
  }
}
%end
