
module ABC
  # The file may optionally start with a file header (immediately after the
  # version field), consisting of a block of consecutive information fields,
  # stylesheet directives, or both, terminated with an empty line. The file
  # header is used to set default values for the tunes in the file.
  # 
  # The file header may only appear at the beginning of a file, not between
  # tunes.
  # 
  # Settings in a tune may override the file header settings, but when the end
  # of a tune is reached the defaults set by the file header are reinstated.
  # 
  # Applications which extract separate tunes from a file must insert the fields
  # of the original file header into the header of the extracted tune. However,
  # since users may manually extract tunes without regard to the file header, it
  # is not recommended to use a file header in an abc tunebook that is to be
  # distributed. 
  #
  class FileHeader
  
  end
  
end
