exports.config = {
  title: 'Pux Starter App',
  public_path: process.env.NODE_ENV === 'production'
               ? '/dist/'
               : 'http://0.0.0.0:8080/dist/'
}
