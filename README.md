# compatibility


SCROLL

https://github.com/p0deje/watir-scroll
You can either scroll to a specific element

button1 = @browser.input(:class => "mileage_rate")
@browser.scroll.to button1

@browser.scroll.to :top
@browser.scroll.to :center
@browser.scroll.to :bottom

browser.scroll.to [0, 200]

Command to Run
cucumber -t @ems browsername=chrome61
