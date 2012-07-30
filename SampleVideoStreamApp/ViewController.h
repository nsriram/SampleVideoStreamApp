#import <UIKit/UIKit.h>
#import <MediaPlayer/MPMoviePlayerController.h>

@interface ViewController : UIViewController{
    UIView *movieView;
    MPMoviePlayerController *player;
}
@property (nonatomic,retain) IBOutlet UIView *movieView;
@property (nonatomic,retain) IBOutlet MPMoviePlayerController *player;
-(NSURL*) movieURL;

@end
