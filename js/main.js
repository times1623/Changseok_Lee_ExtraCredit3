(()=> {
    const vm = new Vue({
        el: '#app',

        data: {
            mainmessage : "welcome to my video app!",
            videodata : [],
            singlemoviedata : [],

            videotitle : "",
            imgsource : "",
            synopsis : "",
            videosource : "",
            videodescription : "",
            showDetails : false,
            showThumbnail : false
        },

        created : function() {
            this.fetchMovieData(null);
        },

        methods : {
            fetchMore(e) {
                this.fetchMovieData(e.currentTarget.dataset.movie);
                this.showThumbnail = true;// this will be a number (id)
                            
            },

            closeBox() {
                this.showThumbnail = false;
                console.log('a');
            },

            loadMovie(e) {
                // stub
                e.preventDefault();

                dataKey = e.currentTarget.getAttribute('href');

                currentData = this.videodata.filter(video => video.vid_path === dataKey);

                this.videotitle = currentData[0].vid_name;
                this.videodescription = currentData[0].vid_desc;
                this.videosource = dataKey;

                this.showDetails = true;

                setTimeout(function() { window.scrollTo(0, 1200); }, 500);
            },

            scrollBackUp() {
                window.scrollTo(0, 0);
                this.showDetails = false;
                this.videsource = "";
            },

            fetchMovieData(movie) {
                url = movie ? `./includes/index.php?info=${movie}` : './includes/index.php';
            
                fetch(url) // pass in the one or many query
                .then(res => res.json())
                .then(data => {
                    if (movie) {
                        // getting one movie, so use the single array
                        console.log(data[0].synopsis_desc);
                        this.synopsis = data[0].synopsis_desc;
                        this.imgsource = data[0].thumbnail_name
               
                    } else {
                        // push all the video (or portfolio content) into the video array
                        console.log(data[0].genre_name);
                        this.videodata = data;
                    }
                })
                .catch(function(error) {
                    console.log(error);
                });
            }
        }
    });
})();