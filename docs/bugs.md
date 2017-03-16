- Q: On signup :422 Unprocessable entity. "Username can't be blank"
  * Solution: typo: name rather than username

- Q: button nav rather than link for login/signup: session_form.jsx / user.jsx
  * Solution: define functions for signup/login to add route to url.


- Q: scss setup: demo-button (form.scss, and in session_form)
  * Solution: bind in constructor (session form)

- Q: images not appearing on heroku
  * Solution: hosting on cloudinary + run `bundle exec rake assets:clobber` and remove the config changes in production.rb
  
- Q: navbar setup: should they all be in the same file?
  - currently multiple navs: 1. session form. other in user.jsx. what about home?
  * Solution:

- Q: colors rendering
  * Solution:
