var derby = require('derby')
  , app = derby.createApp(module)
  , get = app.get
  , view = app.view
  , ready = app.ready
  , start = +new Date()

derby.use(require('../../ui'))


// ROUTES //

get('/posts', function(page, model, params) {
  model.subscribe('posts', function() {
    model.ref('_posts', model.filter('posts'));
    page.render('posts');
  });
});

get('/:postID?', function(page, model, params) {
  var postID = params.postID || parseInt(Math.random() * 1e9).toString(36)
  
  model.subscribe('posts.' + postID, function(err, post) {
    model.ref('_post', post)
  
    post.incr('views')
    page.render()
  })
});

