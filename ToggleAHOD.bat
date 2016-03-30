IF EXIST config_ticker_AHOD.txt (
	rename config_ticker.txt config_ticker_NORM.txt
	rename config_video.txt config_video_NORM.txt
	rename config_ticker_AHOD.txt config_ticker.txt
	rename config_video_AHOD.txt config_video.txt
) ELSE (
	rename config_ticker.txt config_ticker_AHOD.txt
	rename config_video.txt config_video_AHOD.txt
	rename config_ticker_NORM.txt config_ticker.txt
	rename config_video_NORM.txt config_video.txt
)