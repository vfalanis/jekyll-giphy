# jekyll-giphy

A jekyll plugin for embedding Giphy GIFS in your blog/site

Just think about a word/topic and the plugin will randomly select a GIF from  [giphy.com](http://giphy.com/)

![](http://i.giphy.com/KXY5lB8yOarLy.gif)

### Installation:

#### 1a. Manual Installation
In your jekyll site source root, make a _plugins directory. Place the giphy.rb file there.

#### 1b. Automatic Installation

* Install the gem:

```
    gem install jekyll-giphy
```

* Add the gem to your Jekyll _config.yml:
```
    gems: [jekyll-giphy]
```

### Usage:
```
{% giphy random_word %}
```

For example:
```
{% giphy welcome %}
```
Another example:
```
{% giphy cats %}
```
