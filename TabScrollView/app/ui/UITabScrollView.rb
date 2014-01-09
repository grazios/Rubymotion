class UITabScrollView < UIView
  attr_accessor :scroll_view,:tab_view


  def initWithFrame(frame)
    super
    width = frame[1][0]
    height = frame[1][1]

    @scroll_view = UIView.alloc.initWithFrame([[0,0],[width,height-44]])
    @tab_view = UIView.alloc.initWithFrame([[0,height-44],[width,44]])
    self.addSubview(@scroll_view)
    self.addSubview(@tab_view)
  end

  def views(views)
    button_width = self.tab_view.frame.size.width / views.size
    views.each_with_index{|view, i|
      scroll_sub_view = self.wrap(view)
      tab_button = self.getTabButton(i, view:view, button_width:button_width)
      if (i > 0) then
        scroll_sub_view.hidden = TRUE
      end

      self.scroll_view.addSubview(scroll_sub_view)
      self.tab_view.addSubview(tab_button)
    }
  end

  def wrap(view)
    scroll_sub_view = UIScrollView.alloc.initWithFrame([[0,0],self.scroll_view.frame.size])
    view_wrapper = UIView.alloc.initWithFrame(view.frame)
    view_wrapper.addSubview(view)
    view_wrapper.backgroundColor = UIColor.blackColor
    scroll_sub_view.showsHorizontalScrollIndicator = TRUE
    scroll_sub_view.indicatorStyle = UIScrollViewIndicatorStyleWhite
    scroll_sub_view.addSubview(view_wrapper)
    scroll_sub_view.setContentSize([view.frame.size.width, view.frame.size.height])
      
    return scroll_sub_view
  end

  def getTabButton(i,view:view, button_width:button_width)
    button = view.tab_button
    if (button.nil?) then
      button = UITabScrollButtonItem.buttonWithType(UIButtonTypeRoundedRect)
      button.setTitle(view.title, forState:UIControlStateNormal)
      button.index = i
      button.when(UIControlEventTouchUpInside) do
        self.scroll_view.subviews.each{|scroll|
          scroll.hidden = TRUE
        }
        self.scroll_view.subviews[button.index].hidden = FALSE
      end
    end
    button.frame = [[button_width * i,0],[button_width,self.tab_view.frame.size.height]]
    return button
  end

  def changeScroll(button)
    puts button
    alert = UIAlertView.alloc.init
    alert.message = button.i
    
  end
end
