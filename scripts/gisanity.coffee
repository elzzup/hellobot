﻿tumblr = require "tumblrbot"
SOURCES = {
  "mikugifanime.tumblr.com"
}

getGif = (blog, msg) ->
  tumblr.photos(blog).random (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  robot.respond /miku/i, (msg) ->
    blog = msg.random Object.keys(SOURCES)
    getGif blog, msg