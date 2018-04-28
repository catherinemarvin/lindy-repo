App.YouTube = class {
  constructor(elementID, video) {
    this.elementID = elementID;
    this.video = video;
  }

  render() {
    var tag = document.createElement('script');
    tag.src = 'https://www.youtube.com/iframe_api';
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
  }

  onPlayerReady(event) {
    event.target.playVideo();
  }
}

function onYouTubeIframeAPIReady() {
  player = new YT.Player(youtube.elementID, {
    height: '390',
    width: '640',
    videoId: youtube.video.youtube_id,
    playerVars: {
      start: youtube.video.start,
      end: youtube.video.end,
    },
    events: {
      'onReady': youtube.onPlayerReady,
    }
  });
}
