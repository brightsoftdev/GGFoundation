//
//  GGWebViewController.m
//  GGDemo
//
//  Created by gtts on 5/12/12.
//  Copyright (c) 2012 TJUT-SCCE-SIPC. All rights reserved.
//

#import "GGWebViewController.h"

@interface GGWebViewController ()

@end

@implementation GGWebViewController

@synthesize myWebView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"webView test";
        self.myWebView.delegate = self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.myWebView = nil;
}

#pragma mark -
#pragma mark UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    if ( [request.mainDocumentURL.relativePath isEqualToString:@"/click/false"] ) {    
        NSLog( @"not clicked" );
        return false;
    }
    
    if ( [request.mainDocumentURL.relativePath isEqualToString:@"/click/true"] ) {        //the image is clicked, variable click is true
        NSLog( @"image clicked" );
        
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"JavaScript called" 
													 message:@"You've called iPhone provided control from javascript!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        [alert show];
        return false;
    }
    
    return true;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
	NSString *title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"]; 
	NSLog(@"title11=%@",title);
	
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
	NSString *title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"]; 
	NSLog(@"title=%@",title);
	//添加数据
	[myWebView stringByEvaluatingJavaScriptFromString:@"var field = document.getElementById('field_2');"  
	 "field.value='Multiple statements - OK';"]; 
	
	//[myWebView stringByEvaluatingJavaScriptFromString:@"var script = document.createElement('script');"  
    //	 "script.type = 'text/javascript';"  
    //	 "script.text = \"function myFunction() { "  
    //	 "var field = document.getElementById('field_3');"  
    //	 "field.value='Calling function - OK';"  
    //	 "}\";"  
    //	 "document.getElementsByTagName('head')[0].appendChild(script);"];  
    //	
    //	[myWebView stringByEvaluatingJavaScriptFromString:@"myFunction();"];  
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
	NSLog(@"出错了！！！");
	
}

@end
