# Quotes500
Quotes500 is JSON generator for [quotery.com](http://www.quotery.com/). It parses html content, converting it to JSON file.

you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/quotes500`. To experiment with that code, run `bin/console` for an interactive prompt.

Before
```html
<div class="blog-quote">
<div class="blog-quote__count"><span>1</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/we-look-forward-to-the-time-when-the-power-of/">We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/william-ewart-gladstone/">
<img src="http://img.quotery.com/pictures/2014/05/william-gladstone-150x150.jpg" alt="A photograph of William Gladstone." class="blog-quote__thumbnail">
William Ewart Gladstone </a>
</span>
</div>
</div>
<div class="blog-quote">
<div class="blog-quote__count"><span>2</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/it-is-better-to-remain-silent-at-the-risk-of/">It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/maurice-switzer/">
<img src="http://www.quotery.com/wp-content/themes/quotery/images/xphoto-unavailable.jpg.pagespeed.ic.vuAA-A-Ii3.jpg" alt="" class="blog-quote__thumbnail">
Maurice Switzer </a>
</span>
</div>
</div>
<div class="blog-quote">
<div class="blog-quote__count"><span>3</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/for-success-attitude-is-equally-as-important-as-ability/">For success, attitude is equally as important as ability.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/anonymous/">
<img src="http://img.quotery.com/pictures/2013/10/Anonymous-150x150.jpg" alt="A photograph of Anonymous." class="blog-quote__thumbnail">
Anonymous </a>
</span>
</div>
</div>
<div class="blog-quote">
<div class="blog-quote__count"><span>4</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/either-you-run-the-day-or-the-day-runs-you/">Either you run the day, or the day runs you.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/jim-rohn/">
<img src="http://img.quotery.com/pictures/2013/10/jim-rohn-150x150.jpg" alt="A photograph of Jim Rohn." class="blog-quote__thumbnail">
Jim Rohn </a>
</span>
</div>
</div>
<div class="blog-quote">
<div class="blog-quote__count"><span>5</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/when-i-die-i-want-to-go-peacefully-like-my/">When I die, I want to go peacefully like my grandfather did–in his sleep. Not yelling and screaming like the passengers in his car.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/bob-monkhouse/">
<img src="http://img.quotery.com/pictures/2013/11/bob-monkhouse-150x150.jpg" alt="A photograph of Bob Monkhouse." class="blog-quote__thumbnail">
Bob Monkhouse </a>
</span>
</div>
</div>
<div class="blog-quote">
<div class="blog-quote__count"><span>6</span>QUOTE</div>
<div class="blog-quote__content">
<a href="http://www.quotery.com/quotes/when-i-was-5-years-old-my-mother-always-told/">When I was 5 years old, my mother always told me that happiness was the key to life. When I went to school, they asked me what I wanted to be when I grew up. I wrote down &#8220;happy.&#8221; They told me I didn’t understand the assignment, and I told them they didn’t understand life.</a>
</div>
<div class="blog-quote__author">
<span>
<a href="http://www.quotery.com/authors/anonymous/">
<img src="http://img.quotery.com/pictures/2013/10/Anonymous-150x150.jpg" alt="A photograph of Anonymous." class="blog-quote__thumbnail">
Anonymous </a>
</span>
</div>
</div>
```
After
```JSON
{
  "quotes": [
    {
      "author": "William Ewart Gladstone",
      "rank": 1,
      "content": "We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.",
      "imageSrc": "http://img.quotery.com/pictures/2014/05/william-gladstone-150x150.jpg"
    },
    {
      "author": "Maurice Switzer",
      "rank": 2,
      "content": "It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it.",
      "imageSrc": "http://www.quotery.com/wp-content/themes/quotery/images/xphoto-unavailable.jpg.pagespeed.ic.vuAA-A-Ii3.jpg"
    },
    {
      "author": "Anonymous",
      "rank": 3,
      "content": "For success, attitude is equally as important as ability.",
      "imageSrc": "http://img.quotery.com/pictures/2013/10/Anonymous-150x150.jpg"
    },
    {
      "author": "Jim Rohn",
      "rank": 4,
      "content": "Either you run the day, or the day runs you.",
      "imageSrc": "http://img.quotery.com/pictures/2013/10/jim-rohn-150x150.jpg"
    },
    {
      "author": "Bob Monkhouse",
      "rank": 5,
      "content": "When I die, I want to go peacefully like my grandfather did–in his sleep. Not yelling and screaming like the passengers in his car.",
      "imageSrc": "http://img.quotery.com/pictures/2013/11/bob-monkhouse-150x150.jpg"
    },
    {
      "author": "Anonymous",
      "rank": 6,
      "content": "When I was 5 years old, my mother always told me that happiness was the key to life. When I went to school, they asked me what I wanted to be when I grew up. I wrote down “happy.” They told me I didn’t understand the assignment, and I told them they didn’t understand life.",
      "imageSrc": "http://img.quotery.com/pictures/2013/10/Anonymous-150x150.jpg"
    },
    {
      "author": "Margaret Mead",
      "rank": 7,
      "content": "Never doubt that a small group of thoughtful, committed citizens can change the world. Indeed, it’s the only thing that ever has.",
      "imageSrc": "http://img.quotery.com/pictures/2014/04/margaret-mead-150x150.jpg"
    },
    {
      "author": "Kent M. Keith",
      "rank": 8,
      "content": "People are illogical, unreasonable, and self-centered. Love them anyway.",
      "imageSrc": "http://img.quotery.com/pictures/2014/05/kent-m-keith-150x150.jpg"
    },
    {
      "author": "François (VI) (Duc de La Rochefoucauld)",
      "rank": 9,
      "content": "Absence diminishes mediocre passions and increases great ones, as the wind blows out candles and fans fire.",
      "imageSrc": "http://img.quotery.com/pictures/2013/03/françois-de-la-rochefoucauld-150x150.jpg"
    },
    {
      "author": "Stacey Kramer",
      "rank": 10,
      "content": "The next time you’re faced with something that’s unexpected, unwanted and uncertain, consider that it just may be a gift.",
      "imageSrc": "http://img.quotery.com/pictures/2014/04/stacey-kramer-150x150.jpg"
    }
  ]
}
```


## Installation

```shell
sudo gem install quotes500
```

## Usage

Generate 500 quotes

``` shell
quotes500
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jj1100x/quotes500.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
