
module ABC
  # An abc tune itself consists of a tune header and a tune body,
  # terminated by an empty line or the end of the file. It may
  # also contain comment lines or stylesheet directives.
  #
  # The tune header is composed of several information field lines,
  # which are further discussed in information fields. The tune
  # header should start with an X:(reference number) field followed
  # by a T:(title) field and finish with a K:(key) field.
  #
  # The tune body, which contains the music code, follows immediately
  # after. Certain fields may also be used inside the tune body - see
  # use of fields within the tune body.
  #
  # It is legal to write an abc tune without a tune body. This
  # feature can be used to document tunes without transcribing them.
  #
  # Abc music code lines are those lines in the tune body which give
  # notes, bar lines and other musical symbols - see the tune body
  # for details. In effect, music code is the contents of any line
  # which is not an information field, stylesheet directive or
  # comment line. 
  #
  class Tune
    
  end
end
