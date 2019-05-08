<<<<<<< HEAD
/* Custom JS */

(function() {
  var links = document.getElementsByTagName('a');
  for (var i = 0; i < links.length; i++) {
    if (/^(https?:)?\/\//.test(links[i].getAttribute('href'))) {
      links[i].target = '_blank';
    }
  }
})();
||||||| merged common ancestors
=======
/* Custom JS */
>>>>>>> 4c60c5299ef896d84aa63d7c1e9e3287d16c2e42
