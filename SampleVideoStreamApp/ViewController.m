#import "ViewController.h"

@implementation ViewController

@synthesize movieView,player;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSURL *) movieURL{
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *moviePath= [bundle pathForResource:@"sample" ofType:@"m4v" ];
//    return [NSURL fileURLWithPath:moviePath];
    return [NSURL URLWithString:@"http://devimages.apple.com/iphone/samples/bipbop/gear1/prog_index.m3u8" ];
//    return [NSURL URLWithString:@"http://121.241.249.136:1935/livefeed/NDTVINDIA_QVGA.sdp/playlist.m3u8"];
//    return [NSURL URLWithString:@"http://121.241.249.136:1935/livefeed/SUNTV_QVGA.sdp/playlist.m3u8"];
//    return [NSURL URLWithString:@"http://121.241.249.136:1935/livefeed/CARTOONNETWORK_QVGA.sdp/playlist.m3u8"];
//    return [NSURL URLWithString:@"http://121.241.249.136:1935/livefeed/CNN_QVGA.sdp/playlist.m3u8"];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.player = [[MPMoviePlayerController alloc]init];
    self.player.contentURL = [self movieURL];
    self.player.view.frame = self.movieView.bounds;
    self.player.view.autoresizingMask= UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self.movieView addSubview:player.view];
    [self.player play];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

@end