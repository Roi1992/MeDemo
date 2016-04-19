//
//  ViewController.m
//  MeDemo
//
//  Created by WSF on 16/4/17.
//  Copyright © 2016年 WSF. All rights reserved.
//

#import "ViewController.h"
#import <UMengSocial/UMSocial.h>
@interface ViewController ()<UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    shareBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:shareBtn];
    shareBtn.frame = CGRectMake(10, 50, 30, 50);
    [shareBtn addTarget:self action:@selector(clickShareBtnMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    
    /*
     FRAMEWORK_SEARCH_PATHS = $(inherited) $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/ $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Facebook/ $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Twitter/
     GCC_PREPROCESSOR_DEFINITIONS = $(inherited) COCOAPODS=1
     HEADER_SEARCH_PATHS = $(inherited) "${PODS_ROOT}/Headers/Public" "${PODS_ROOT}/Headers/Public/AFNetworking" "${PODS_ROOT}/Headers/Public/FDFullscreenPopGesture" "${PODS_ROOT}/Headers/Public/IQKeyboardManager" "${PODS_ROOT}/Headers/Public/MJExtension" "${PODS_ROOT}/Headers/Public/RESideMenu" "${PODS_ROOT}/Headers/Public/SDWebImage" "${PODS_ROOT}/Headers/Public/UMengSocial"
     LIBRARY_SEARCH_PATHS = $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_5.0/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/TencentOpenAPI/ $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Wechat/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/AlipayShare/**  $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/SinaSSO/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Line/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Whatsapp/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Instagram/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Tumblr/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/LaiWang/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Twitter/** $(PODS_ROOT)/UmengSocial/Umeng_SDK_Social_iOS_ARM64_5.0/UMSocial_Sdk_Extra_Frameworks/Facebook/**
     OTHER_CFLAGS = $(inherited) -isystem "${PODS_ROOT}/Headers/Public" -isystem "${PODS_ROOT}/Headers/Public/AFNetworking" -isystem "${PODS_ROOT}/Headers/Public/FDFullscreenPopGesture" -isystem "${PODS_ROOT}/Headers/Public/IQKeyboardManager" -isystem "${PODS_ROOT}/Headers/Public/MJExtension" -isystem "${PODS_ROOT}/Headers/Public/RESideMenu" -isystem "${PODS_ROOT}/Headers/Public/SDWebImage" -isystem "${PODS_ROOT}/Headers/Public/UMengSocial"
     OTHER_LDFLAGS = $(inherited) -ObjC -l"AFNetworking" -l"APOpenSdk" -l"FDFullscreenPopGesture" -l"IQKeyboardManager" -l"LWApiSDK" -l"MJExtension" -l"RESideMenu" -l"SDWebImage" -l"SocialAlipayShare" -l"SocialFacebook" -l"SocialInstagram" -l"SocialLaiWang" -l"SocialLine" -l"SocialQQ" -l"SocialSinaSSO" -l"SocialTumblr" -l"SocialTwitter" -l"SocialWechat" -l"SocialWhatsapp" -l"UMSocial_Sdk_5.0" -l"UMSocial_Sdk_Comment_5.0" -l"WeChatSDK" -l"WeiboSDK" -l"iconv" -l"sqlite3" -l"stdc++" -l"z" -framework "Accounts" -framework "CoreData" -framework "CoreGraphics" -framework "CoreTelephony" -framework "FBSDKCoreKit" -framework "FBSDKLoginKit" -framework "FBSDKShareKit" -framework "Fabric" -framework "ImageIO" -framework "MobileCoreServices" -framework "QuartzCore" -framework "Security" -framework "Social" -framework "SystemConfiguration" -framework "TencentOpenAPI" -framework "TwitterCore" -framework "TwitterKit"
     PODS_ROOT = ${SRCROOT}/Pods
     */
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)clickShareBtnMethod:(UIButton *)sender

{
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"507fcab25270157b37000010"
                                      shareText:@"你要分享的文字"
                                     shareImage:[UIImage imageNamed:@"icon.png"]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToWechatSession,UMShareToQQ,nil]
                                       delegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
