enum Errors {
  INVALID_TANZIL_XML,
  INVALID_CHAPTER_NUMBER,
  INVALID_VERSE_NUMBER,
  IMMUTABLE_COLLECTION,
  INVALID_ENCODING_TYPE,
  INVALID_COLUMN_NAME,
  RESOURCE_NOT_FOUND,
  RESOURCE_CLOSE_FAILED,
  RESOURCE_READ_FAILED,
  FILE_NOT_FOUND,
}

sdkErrorToMessage(Errors error) {
  switch (error) {
    case Errors.INVALID_TANZIL_XML:
      return "Failed to read Tanzil XML.";
    case Errors.INVALID_CHAPTER_NUMBER:
      return "Chapter numbers should be between 1 and 114 inclusive.";
    case Errors.INVALID_VERSE_NUMBER:
      return "The verse number is out of range.";
    case Errors.IMMUTABLE_COLLECTION:
      return "The collection is immutable and cannot be modified.";
    case Errors.INVALID_ENCODING_TYPE:
      return "The specified encoding type is not supported.";
    case Errors.INVALID_COLUMN_NAME:
      return "The specific column could not be found.";
    case Errors.RESOURCE_NOT_FOUND:
      return "The embedded JAR resource could not be found.";
    case Errors.RESOURCE_CLOSE_FAILED:
      return "Failed to close embedded JAR resource.";
    case Errors.RESOURCE_READ_FAILED:
      return "Failed to read embedded JAR resource.";
    case Errors.FILE_NOT_FOUND:
      return "The specified file could not be found.";
  }
}
