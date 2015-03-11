 Muse
 =======
 ---
 This applicatoin was inspired from Mackenziechild 12 in 12 challenge
 I followed his video learning rails.

 Here are some differences between Mackenziechild's version
- use **slim** instead of haml
- use **carrierwave** and **mini_magick** instead of paperclip
- some styles

### Version
none

### Tech
* [slim] - A lightweight templating engine
* [carrierwave] - This gem provides a simple and extremely flexible way to upload files from Ruby applications
* [font awesome] - Font Awesome gives you scalable vector icons that can instantly be customized 
* [normalize.css] - Normalize.css makes browsers render all elements consistently and in line with modern standards.

### Installation

I use rvm with ruby 2.2.0 and rails 4.2.0. Because of spring, I need to use bin/bundle to make all extra cmds workable. I also exploit pow to start server. It is very convenient tool.

```sh
$ git clone [git-repo-url] rails-muse
$ cd rails-muse
$ bin/bundle install
$ powder start
$ powder link
```

### Notes
I revised some styles as I mentions. I change change on <div class='post'> in posts/index.html.slim from float to inline-block, so that we can avoid some trouble while descriptions are too long.


### Dependencies
currently extended with the following plugins
* imagemagick


### Todo's
None
###License
None





[slim]:http://slim-lang.com/
[carrierwave]:https://github.com/carrierwaveuploader/carrierwave
[font awesome]:http://fortawesome.github.io/Font-Awesome/
[normalize.css]:https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.2/normalize.min.css


