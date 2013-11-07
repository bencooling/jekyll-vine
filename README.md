jekyll-vine
===========

Jekyll plugin to easily embed Vine videos

Installation
------------

Drop the vine.rb file into the _plugins directory of your jekyll project


Usage
-----
Include the liquid tag into your markdown, HTML or template file of your jekyll project. The id is required, if no format or size options are included it falls back to postcard by 600px. Keep the options in order of id first, format second, size last.

- **id** The id of the vine video to embed
- **format** Either postcard or simple
- **size** Either 600 or 480 or 320

Example:

    {% vine b3MIgHEVIzl simple 480 %}