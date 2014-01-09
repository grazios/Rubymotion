class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    main = UITabScrollView.alloc.initWithFrame([[0,0],[@window.size.width,@window.size.height]])

    sub = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])
    subsub = UIView.alloc.initWithFrame([[100,500],[10,10]])
    subsub2 = UIView.alloc.initWithFrame([[500,500],[10,10]])

    sub2 = UITabScrollViewItem.alloc.initWithFrame([[0,0],[600,@window.size.height-44]])
    subsub22 = UIView.alloc.initWithFrame([[100,500],[10,10]])
    subsub222 = UIView.alloc.initWithFrame([[500,500],[10,10]])

    subsub.backgroundColor = UIColor.whiteColor
    subsub2.backgroundColor = UIColor.whiteColor
    sub.addSubview(subsub)
    sub.addSubview(subsub2)

    sub2.backgroundColor = UIColor.cyanColor
    subsub22.backgroundColor = UIColor.whiteColor
    subsub222.backgroundColor = UIColor.blackColor
    sub2.addSubview(subsub22)
    sub2.addSubview(subsub222)

    sub.title = "fuga"
    sub2.title = "hoge"
    main.views([sub,sub2])
    @window.addSubview(main)
    true
  end
end
