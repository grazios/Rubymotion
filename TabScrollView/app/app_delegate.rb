class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    main = UITabScrollView.alloc.initWithFrame([[0,0],[@window.size.width,@window.size.height]])

    sub = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])
    sub2 = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])
    sub3 = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])
    sub4 = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])


    sub2.backgroundColor = UIColor.cyanColor
    sub3.backgroundColor = UIColor.blueColor
    sub4.backgroundColor = UIColor.orangeColor


    sub.title = "fuga"
    sub2.title = "hoge"
    sub3.title = "fizz"
    sub4.title = "buzz"
    main.views([sub,sub2,sub3,sub4])
    @window.addSubview(main)
    true
  end
end
