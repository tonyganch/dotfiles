var COMMENT_SELECTOR = '.com-google-devtools-codereview-fe-client-comments-' +
    'widgets-MessagePanel_BinderImpl_GenCss_style-content';

var observer = new MutationObserver(handleMutations);
observer.observe(document, {childList: true, subtree: true});


/**
 * Checks if a comment is added to document and convert links to images if so.
 *
 * @param {!Array<!Object>} mutations
 */
function handleMutations(mutations) {
  mutations.forEach(function(mutation) {
    if (!mutation.addedNodes) return;

    var node = mutation.addedNodes[0];
    if (!node || !node.querySelector) {
      return;
    }

    var comment = node.querySelector(COMMENT_SELECTOR);
    if (comment) {
      loadPandas(comment);
    }
  });
}


/**
 * Looks for links inside comment and converts valid image links into images.
 *
 * @param {!Element} comment Comment element that may contain links.
 */
function loadPandas(comment) {
  var links = comment.querySelectorAll('a');
  Array.prototype.forEach.call(links, convertLinkToImage);
}


/**
 * Converts valid image links into images.
 *
 * @param {!Element} link Link element that may or may not lead to an image.
 */
function convertLinkToImage(link) {
  var img = document.createElement('img');

  img.onerror = function() {
    var a = document.createElement('a');
    a.href = this.src;
    a.textContent = this.src;
    this.parentNode.insertBefore(a, this);
    this.remove();
  };

  img.setAttribute('src', link.textContent);
  img.classList.add('pandas-pandas-image');
  link.parentNode.insertBefore(img, link);
  link.remove();
}
