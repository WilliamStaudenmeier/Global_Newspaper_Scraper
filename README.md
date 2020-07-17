# Global Newspaper Scraper

Real-time word-scraper for the world's top newspapers

With all that is happening in the news today, it's interesting to see the number of times certain words appear in newspapers across the world. Words such as "pandemic," "NASA," "protests," "Trump," and "lockdown" appear almost as often as "from" and "at."

This past weekend I built a free word-scraper with a live feed to top newspapers from around the world like #thenewyorktimes from the US and the Yomiuri Shimbun from Japan.

As my fellow #ecommerce and #marketing analysts will agree, web-scraping can be a powerful tool for determining the sentiment of your customers. Public policy makers can also deploy web-scrapers to get a real-time pulse of what is trending among their constituents.

From an #rprogramming standpoint, I used the #rvest package to pull the data from the websites and #wordcloud2 to visualize the data inside a #shiny app. I purposefully didn't use a stop-words function because I want the audience to have an unfiltered look at the relative frequency of words.
