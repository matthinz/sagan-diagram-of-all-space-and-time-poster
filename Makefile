.PHONY: thumbnails

thumbnails: original-thumbnail.jpg poster-thumbnail.jpg

original-thumbnail.jpg: original.tiff Makefile
	magick convert $< -resize 600x -quality 95 $@

poster-thumbnail.jpg: poster.tiff Makefile
	magick convert $< -resize 600x -quality 95 $@
