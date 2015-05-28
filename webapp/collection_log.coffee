Schemas = {}

logDetailsSchema = new SimpleSchema(
  parameter1:
    type: Number
    label: "more important parameter"
    min: 0
    max: 200

  parameter2:
    type: Number
    label: "more important parameter"
    min: 0
    max: 200

  parameter3:
    type: String
    label: "less important parameter3"
    min: 0
    max: 200

  parameter4:
    type: String
    label: "least important parameter4"
#    regEx: /^[0-9]{5}$/
)

Schemas.Logs = new SimpleSchema(
  appName:
    type: String

  userName:
    type: String

  created:
    type: Date

  logDetails:
    type: [logDetailsSchema]
    label: "Log Dump"
    minCount: 2

#    label: "Last date this log was checked out"
#    optional: true
)

Logs = new Meteor.Collection("logs",
  idGeneration: "MONGO"
)

Logs.attachSchema(Schemas.Logs);

Logs.allow
  insert: ->
    true

  update: ->
    true

  remove: ->
    true

