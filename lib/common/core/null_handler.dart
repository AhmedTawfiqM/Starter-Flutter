bool isNull(Object object) { //TODO: convert to extension function
  var isNull = false;
  if (["", null, false, 0].contains(object)) {
    isNull = true;
  }
  return isNull;
}
