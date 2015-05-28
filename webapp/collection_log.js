// Generated by CoffeeScript 1.9.2
(function() {
  var Logs, Schemas, logDetailsSchema;

  Schemas = {};

  logDetailsSchema = new SimpleSchema({
    parameter1: {
      type: Number,
      label: "more important parameter",
      min: 0,
      max: 200
    },
    parameter2: {
      type: Number,
      label: "more important parameter",
      min: 0,
      max: 200
    },
    parameter3: {
      type: String,
      label: "less important parameter3",
      min: 0,
      max: 200
    },
    parameter4: {
      type: String,
      label: "least important parameter4"
    }
  });

  Schemas.Logs = new SimpleSchema({
    appName: {
      type: String
    },
    userName: {
      type: String
    },
    created: {
      type: Date
    },
    logDetails: {
      type: [logDetailsSchema],
      label: "Log Dump",
      minCount: 2
    }
  });

  Logs = new Meteor.Collection("logs", {
    idGeneration: "MONGO"
  });

  Logs.attachSchema(Schemas.Logs);

  Logs.allow({
    insert: function() {
      return true;
    },
    update: function() {
      return true;
    },
    remove: function() {
      return true;
    }
  });

}).call(this);

//# sourceMappingURL=collection_log.js.map
