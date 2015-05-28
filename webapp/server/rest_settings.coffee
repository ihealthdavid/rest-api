
# Global API configuration
Restivus.configure
  useAuth: true
  prettyJson: true
  auth:
    token: 'services.resume.loginTokens.token'
    user: ->
      userId: @request.headers['x-user-id']
      token: @request.headers['x-auth-token']
  onLoggedIn: -> console.log "#{@user.username} (#{@userId}) logged in"
  onLoggedOut: -> console.log "#{@user.username} (#{@userId}) logged out"
#  useClientRouter: false
