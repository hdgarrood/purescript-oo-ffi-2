// module Data.Foreign.OOFFI2

exports.mkEffFnAny = function(fn) {
  return function() {
    return fn.apply(null, arguments);
  }
};

exports.runEffFnAny = function(fn) {
  return function(args) {
    return function() {
      return fn.apply(null, args);
    };
  };
};

exports.runConstructor = function(ctor) {
  return function() {
    var obj = Object.create(ctor.prototype);
    return ctor.apply(obj, arguments);
  };
};
