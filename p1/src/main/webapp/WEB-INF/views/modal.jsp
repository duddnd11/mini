<!doctype html>
<html data-n-head-ssr>
<head>
<title>풋볼그라운드 (축구/풋살 매칭 서비스)</title>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta data-n-head="ssr" name="naver-site-verification"
	content="e6c2d063ed0a26b9bdb7f2a683d0811f9133b783">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="지금 풋볼그라운드에서 어떤 매치들이 있는지 알아보세요.">
<meta data-n-head="ssr" property="og:image"
	content="https://footballground.kr/opengraph.jpg">
<link data-n-head="ssr" rel="apple-touch-icon" sizes="180x180"
	href="/apple-touch-icon.png">
<link data-n-head="ssr" rel="icon" type="image/png" sizes="32x32"
	href="/favicon-32x32.png">
<link data-n-head="ssr" rel="icon" type="image/png" sizes="16x16"
	href="/favicon-16x16.png">
<link data-n-head="ssr" rel="manifest" href="/site.webmanifest">
<script data-n-head="ssr"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d094ae1d6568682bbe37891d59238c2&amp;libraries=services,clusterer,drawing"></script>
<script data-n-head="ssr"
	src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link rel="preload" href="/_nuxt/72675cad47849c83dd4e.js" as="script">
<link rel="preload" href="/_nuxt/0fa5553f3eeb1eb8d992.js" as="script">
<link rel="preload" href="/_nuxt/318d3ca45f96630523c3.js" as="script">
<link rel="preload" href="/_nuxt/ee2f17b885bbecf86771.js" as="script">
<link rel="preload" href="/_nuxt/d4768f4004b42ceb0918.js" as="script">
<link rel="preload" href="/_nuxt/cff8bb471e08456444cb.js" as="script">
<style
	data-vue-ssr-id="7578b989:0 0542ed34:0 6f9c8fb7:0 20f4381e:0 65e31b52:0 7e5cfbf2:0 0d2fb712:0 54a278f0:0 4249028b:0 6ffb2e51:0 5371c5ea:0 6d8fdbd8:0 5a33e4b2:0 9317d030:0 11b4b04a:0 55ca8de7:0 4db37afd:0 31a6adb2:0">
@font-face {
	font-family: NotoSansKR;
	src: url(/_nuxt/fonts/d197a96.woff2) format("woff2"),
		url(/_nuxt/fonts/5fc6f12.woff) format("woff");
	font-weight: 700;
	font-style: normal
}

@font-face {
	font-family: NotoSansKR;
	src: url(/_nuxt/fonts/bfaf185.woff2) format("woff2"),
		url(/_nuxt/fonts/f3b7388.woff) format("woff");
	font-weight: 500;
	font-style: normal
}

@font-face {
	font-family: NotoSansKR;
	src: url(/_nuxt/fonts/f97524d.woff2) format("woff2"),
		url(/_nuxt/fonts/af8df21.woff) format("woff");
	font-weight: 400;
	font-style: normal
}

@font-face {
	font-family: NotoSansKR;
	src: url(/_nuxt/fonts/9ea0937.woff2) format("woff2"),
		url(/_nuxt/fonts/87f51d2.woff) format("woff");
	font-weight: 300;
	font-style: normal
}

@font-face {
	font-family: swiper-icons;
	src:
		url("data:application/font-woff;charset=utf-8;base64, d09GRgABAAAAAAZgABAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGRlRNAAAGRAAAABoAAAAci6qHkUdERUYAAAWgAAAAIwAAACQAYABXR1BPUwAABhQAAAAuAAAANuAY7+xHU1VCAAAFxAAAAFAAAABm2fPczU9TLzIAAAHcAAAASgAAAGBP9V5RY21hcAAAAkQAAACIAAABYt6F0cBjdnQgAAACzAAAAAQAAAAEABEBRGdhc3AAAAWYAAAACAAAAAj//wADZ2x5ZgAAAywAAADMAAAD2MHtryVoZWFkAAABbAAAADAAAAA2E2+eoWhoZWEAAAGcAAAAHwAAACQC9gDzaG10eAAAAigAAAAZAAAArgJkABFsb2NhAAAC0AAAAFoAAABaFQAUGG1heHAAAAG8AAAAHwAAACAAcABAbmFtZQAAA/gAAAE5AAACXvFdBwlwb3N0AAAFNAAAAGIAAACE5s74hXjaY2BkYGAAYpf5Hu/j+W2+MnAzMYDAzaX6QjD6/4//Bxj5GA8AuRwMYGkAPywL13jaY2BkYGA88P8Agx4j+/8fQDYfA1AEBWgDAIB2BOoAeNpjYGRgYNBh4GdgYgABEMnIABJzYNADCQAACWgAsQB42mNgYfzCOIGBlYGB0YcxjYGBwR1Kf2WQZGhhYGBiYGVmgAFGBiQQkOaawtDAoMBQxXjg/wEGPcYDDA4wNUA2CCgwsAAAO4EL6gAAeNpj2M0gyAACqxgGNWBkZ2D4/wMA+xkDdgAAAHjaY2BgYGaAYBkGRgYQiAHyGMF8FgYHIM3DwMHABGQrMOgyWDLEM1T9/w8UBfEMgLzE////P/5//f/V/xv+r4eaAAeMbAxwIUYmIMHEgKYAYjUcsDAwsLKxc3BycfPw8jEQA/gZBASFhEVExcQlJKWkZWTl5BUUlZRVVNXUNTQZBgMAAMR+E+gAEQFEAAAAKgAqACoANAA+AEgAUgBcAGYAcAB6AIQAjgCYAKIArAC2AMAAygDUAN4A6ADyAPwBBgEQARoBJAEuATgBQgFMAVYBYAFqAXQBfgGIAZIBnAGmAbIBzgHsAAB42u2NMQ6CUAyGW568x9AneYYgm4MJbhKFaExIOAVX8ApewSt4Bic4AfeAid3VOBixDxfPYEza5O+Xfi04YADggiUIULCuEJK8VhO4bSvpdnktHI5QCYtdi2sl8ZnXaHlqUrNKzdKcT8cjlq+rwZSvIVczNiezsfnP/uznmfPFBNODM2K7MTQ45YEAZqGP81AmGGcF3iPqOop0r1SPTaTbVkfUe4HXj97wYE+yNwWYxwWu4v1ugWHgo3S1XdZEVqWM7ET0cfnLGxWfkgR42o2PvWrDMBSFj/IHLaF0zKjRgdiVMwScNRAoWUoH78Y2icB/yIY09An6AH2Bdu/UB+yxopYshQiEvnvu0dURgDt8QeC8PDw7Fpji3fEA4z/PEJ6YOB5hKh4dj3EvXhxPqH/SKUY3rJ7srZ4FZnh1PMAtPhwP6fl2PMJMPDgeQ4rY8YT6Gzao0eAEA409DuggmTnFnOcSCiEiLMgxCiTI6Cq5DZUd3Qmp10vO0LaLTd2cjN4fOumlc7lUYbSQcZFkutRG7g6JKZKy0RmdLY680CDnEJ+UMkpFFe1RN7nxdVpXrC4aTtnaurOnYercZg2YVmLN/d/gczfEimrE/fs/bOuq29Zmn8tloORaXgZgGa78yO9/cnXm2BpaGvq25Dv9S4E9+5SIc9PqupJKhYFSSl47+Qcr1mYNAAAAeNptw0cKwkAAAMDZJA8Q7OUJvkLsPfZ6zFVERPy8qHh2YER+3i/BP83vIBLLySsoKimrqKqpa2hp6+jq6RsYGhmbmJqZSy0sraxtbO3sHRydnEMU4uR6yx7JJXveP7WrDycAAAAAAAH//wACeNpjYGRgYOABYhkgZgJCZgZNBkYGLQZtIJsFLMYAAAw3ALgAeNolizEKgDAQBCchRbC2sFER0YD6qVQiBCv/H9ezGI6Z5XBAw8CBK/m5iQQVauVbXLnOrMZv2oLdKFa8Pjuru2hJzGabmOSLzNMzvutpB3N42mNgZGBg4GKQYzBhYMxJLMlj4GBgAYow/P/PAJJhLM6sSoWKfWCAAwDAjgbRAAB42mNgYGBkAIIbCZo5IPrmUn0hGA0AO8EFTQAA")
		format("woff");
	font-weight: 400;
	font-style: normal
}

:root { -
	-swiper-theme-color: #007aff
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1
}

.swiper-container-vertical>.swiper-wrapper {
	flex-direction: column
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box
}

.swiper-container-android .swiper-slide, .swiper-wrapper {
	transform: translateZ(0)
}

.swiper-container-multirow>.swiper-wrapper {
	flex-wrap: wrap
}

.swiper-container-multirow-column>.swiper-wrapper {
	flex-wrap: wrap;
	flex-direction: column
}

.swiper-container-free-mode>.swiper-wrapper {
	transition-timing-function: ease-out;
	margin: 0 auto
}

.swiper-slide {
	flex-shrink: 0;
	width: 100%;
	height: 100%;
	position: relative;
	transition-property: transform
}

.swiper-slide-invisible-blank {
	visibility: hidden
}

.swiper-container-autoheight, .swiper-container-autoheight .swiper-slide
	{
	height: auto
}

.swiper-container-autoheight .swiper-wrapper {
	align-items: flex-start;
	transition-property: transform, height
}

.swiper-container-3d {
	perspective: 1200px
}

.swiper-container-3d .swiper-cube-shadow, .swiper-container-3d .swiper-slide,
	.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top,
	.swiper-container-3d .swiper-wrapper {
	transform-style: preserve-3d
}

.swiper-container-3d .swiper-slide-shadow-bottom, .swiper-container-3d .swiper-slide-shadow-left,
	.swiper-container-3d .swiper-slide-shadow-right, .swiper-container-3d .swiper-slide-shadow-top
	{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 10
}

.swiper-container-3d .swiper-slide-shadow-left {
	background-image: linear-gradient(270deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-right {
	background-image: linear-gradient(90deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-top {
	background-image: linear-gradient(0deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-3d .swiper-slide-shadow-bottom {
	background-image: linear-gradient(180deg, rgba(0, 0, 0, .5), transparent)
}

.swiper-container-css-mode>.swiper-wrapper {
	overflow: auto;
	scrollbar-width: none;
	-ms-overflow-style: none
}

.swiper-container-css-mode>.swiper-wrapper::-webkit-scrollbar {
	display: none
}

.swiper-container-css-mode>.swiper-wrapper>.swiper-slide {
	scroll-snap-align: start start
}

.swiper-container-horizontal.swiper-container-css-mode>.swiper-wrapper {
	scroll-snap-type: x mandatory
}

.swiper-container-vertical.swiper-container-css-mode>.swiper-wrapper {
	scroll-snap-type: y mandatory
}

:root { -
	-swiper-navigation-size: 44px
}

.swiper-button-next, .swiper-button-prev {
	position: absolute;
	top: 50%;
	width: 27px;
	width: calc(var(- -swiper-navigation-size)/44*27);
	height: 44px;
	height: var(- -swiper-navigation-size);
	margin-top: -22px;
	margin-top: calc(-1 * var(- -swiper-navigation-size)/2);
	z-index: 10;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	color: var(- -swiper-theme-color);
	color: var(- -swiper-navigation-color, var(- -swiper-theme-color))
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled
	{
	opacity: .35;
	cursor: auto;
	pointer-events: none
}

.swiper-button-next:after, .swiper-button-prev:after {
	font-family: swiper-icons;
	font-size: 44px;
	font-size: var(- -swiper-navigation-size);
	text-transform: none !important;
	letter-spacing: 0;
	text-transform: none;
	-moz-font-feature-settings: normal,;
	font-feature-settings: normal,;
	font-variant: normal;
	line-height: 1
}

.swiper-button-prev, .swiper-container-rtl .swiper-button-next {
	left: 10px;
	right: auto
}

.swiper-button-prev:after, .swiper-container-rtl .swiper-button-next:after
	{
	content: "prev"
}

.swiper-button-next, .swiper-container-rtl .swiper-button-prev {
	right: 10px;
	left: auto
}

.swiper-button-next:after, .swiper-container-rtl .swiper-button-prev:after
	{
	content: "next"
}

.swiper-button-next.swiper-button-white, .swiper-button-prev.swiper-button-white
	{ -
	-swiper-navigation-color: #fff
}

.swiper-button-next.swiper-button-black, .swiper-button-prev.swiper-button-black
	{ -
	-swiper-navigation-color: #000
}

.swiper-button-lock {
	display: none
}

.swiper-pagination {
	position: absolute;
	text-align: center;
	transition: opacity .3s;
	transform: translateZ(0);
	z-index: 10
}

.swiper-pagination.swiper-pagination-hidden {
	opacity: 0
}

.swiper-container-horizontal>.swiper-pagination-bullets,
	.swiper-pagination-custom, .swiper-pagination-fraction {
	bottom: 10px;
	left: 0;
	width: 100%
}

.swiper-pagination-bullets-dynamic {
	overflow: hidden;
	font-size: 0
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet {
	transform: scale(.33);
	position: relative
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active,
	.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-main
	{
	transform: scale(1)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev
	{
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev-prev
	{
	transform: scale(.33)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next
	{
	transform: scale(.66)
}

.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next-next
	{
	transform: scale(.33)
}

.swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	display: inline-block;
	border-radius: 100%;
	background: #000;
	opacity: .2
}

button.swiper-pagination-bullet {
	border: none;
	margin: 0;
	padding: 0;
	box-shadow: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.swiper-pagination-clickable .swiper-pagination-bullet {
	cursor: pointer
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: var(- -swiper-theme-color);
	background: var(- -swiper-pagination-color, var(- -swiper-theme-color))
}

.swiper-container-vertical>.swiper-pagination-bullets {
	right: 10px;
	top: 50%;
	transform: translate3d(0, -50%, 0)
}

.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 6px 0;
	display: block
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	top: 50%;
	transform: translateY(-50%);
	width: 8px
}

.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	display: inline-block;
	transition: transform .2s, top .2s
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 4px
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic
	{
	left: 50%;
	transform: translateX(-50%);
	white-space: nowrap
}

.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	transition: transform .2s, left .2s
}

.swiper-container-horizontal.swiper-container-rtl>.swiper-pagination-bullets-dynamic .swiper-pagination-bullet
	{
	transition: transform .2s, right .2s
}

.swiper-pagination-progressbar {
	background: rgba(0, 0, 0, .25);
	position: absolute
}

.swiper-pagination-progressbar .swiper-pagination-progressbar-fill {
	background: var(- -swiper-theme-color);
	background: var(- -swiper-pagination-color, var(- -swiper-theme-color));
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	transform: scale(0);
	transform-origin: left top
}

.swiper-container-rtl .swiper-pagination-progressbar .swiper-pagination-progressbar-fill
	{
	transform-origin: right top
}

.swiper-container-horizontal>.swiper-pagination-progressbar,
	.swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite
	{
	width: 100%;
	height: 4px;
	left: 0;
	top: 0
}

.swiper-container-horizontal>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite,
	.swiper-container-vertical>.swiper-pagination-progressbar {
	width: 4px;
	height: 100%;
	left: 0;
	top: 0
}

.swiper-pagination-white { -
	-swiper-pagination-color: #fff
}

.swiper-pagination-black { -
	-swiper-pagination-color: #000
}

.swiper-pagination-lock {
	display: none
}

.swiper-scrollbar {
	border-radius: 10px;
	position: relative;
	-ms-touch-action: none;
	background: rgba(0, 0, 0, .1)
}

.swiper-container-horizontal>.swiper-scrollbar {
	position: absolute;
	left: 1%;
	bottom: 3px;
	z-index: 50;
	height: 5px;
	width: 98%
}

.swiper-container-vertical>.swiper-scrollbar {
	position: absolute;
	right: 3px;
	top: 1%;
	z-index: 50;
	width: 5px;
	height: 98%
}

.swiper-scrollbar-drag {
	height: 100%;
	width: 100%;
	position: relative;
	background: rgba(0, 0, 0, .5);
	border-radius: 10px;
	left: 0;
	top: 0
}

.swiper-scrollbar-cursor-drag {
	cursor: move
}

.swiper-scrollbar-lock {
	display: none
}

.swiper-zoom-container {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center
}

.swiper-zoom-container>canvas, .swiper-zoom-container>img,
	.swiper-zoom-container>svg {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain
}

.swiper-slide-zoomed {
	cursor: move
}

.swiper-lazy-preloader {
	width: 42px;
	height: 42px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -21px;
	margin-top: -21px;
	z-index: 10;
	transform-origin: 50%;
	animation: swiper-preloader-spin 1s linear infinite;
	box-sizing: border-box;
	border-left: 4px solid var(- -swiper-theme-color);
	border-bottom: 4px solid var(- -swiper-theme-color);
	border-right: 4px solid var(- -swiper-theme-color);
	border: 4px solid
		var(- -swiper-preloader-color, var(- -swiper-theme-color));
	border-radius: 50%;
	border-top: 4px solid transparent
}

.swiper-lazy-preloader-white { -
	-swiper-preloader-color: #fff
}

.swiper-lazy-preloader-black { -
	-swiper-preloader-color: #000
}

@
keyframes swiper-preloader-spin {
	to {transform: rotate(1turn)
}

}
.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000
}

.swiper-container-fade.swiper-container-free-mode .swiper-slide {
	transition-timing-function: ease-out
}

.swiper-container-fade .swiper-slide {
	pointer-events: none;
	transition-property: opacity
}

.swiper-container-fade .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-fade .swiper-slide-active, .swiper-container-fade .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube {
	overflow: visible
}

.swiper-container-cube .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1;
	visibility: hidden;
	transform-origin: 0 0;
	width: 100%;
	height: 100%
}

.swiper-container-cube .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-cube.swiper-container-rtl .swiper-slide {
	transform-origin: 100% 0
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-cube .swiper-slide-active, .swiper-container-cube .swiper-slide-next,
	.swiper-container-cube .swiper-slide-next+.swiper-slide,
	.swiper-container-cube .swiper-slide-prev {
	pointer-events: auto;
	visibility: visible
}

.swiper-container-cube .swiper-slide-shadow-bottom,
	.swiper-container-cube .swiper-slide-shadow-left,
	.swiper-container-cube .swiper-slide-shadow-right,
	.swiper-container-cube .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

.swiper-container-cube .swiper-cube-shadow {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .6;
	-webkit-filter: blur(50px);
	filter: blur(50px);
	z-index: 0
}

.swiper-container-flip {
	overflow: visible
}

.swiper-container-flip .swiper-slide {
	pointer-events: none;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 1
}

.swiper-container-flip .swiper-slide .swiper-slide {
	pointer-events: none
}

.swiper-container-flip .swiper-slide-active, .swiper-container-flip .swiper-slide-active .swiper-slide-active
	{
	pointer-events: auto
}

.swiper-container-flip .swiper-slide-shadow-bottom,
	.swiper-container-flip .swiper-slide-shadow-left,
	.swiper-container-flip .swiper-slide-shadow-right,
	.swiper-container-flip .swiper-slide-shadow-top {
	z-index: 0;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}

[fg-component=loading][data-v-588b9a58] {
	position: fixed;
	left: 0;
	top: 0;
	width: 100vw;
	height: 100vh;
	background-color: #000;
	z-index: 100000;
	display: flex;
	justify-content: center;
	align-items: center
}

[fg-component=loading]>.spinner[data-v-588b9a58] {
	height: 28px;
	width: 28px;
	color: hsla(0, 0%, 100%, .275);
	position: relative;
	display: inline-block;
	border-radius: 50%;
	border: 5px solid;
	border-right: 5px solid hsla(0, 0%, 100%, .9);
	-webkit-animation: adgj98a7s98dg7ads89fuaf89jaikleqwl-data-v-588b9a58
		.75s linear infinite;
	animation: adgj98a7s98dg7ads89fuaf89jaikleqwl-data-v-588b9a58 .75s
		linear infinite
}

@
-webkit-keyframes adgj98a7s98dg7ads89fuaf89jaikleqwl-data-v-588b9a58 {
	0%{
	transform: rotate(0)
}

to {
	transform: rotate(1turn)
}

}
@
keyframes adgj98a7s98dg7ads89fuaf89jaikleqwl-data-v-588b9a58 { 0%{
	transform: rotate(0)
}

to {
	transform: rotate(1turn)
}

}
body, html {
	margin: 0;
	padding: 0;
	background-color: #000;
	overflow-x: hidden
}

body.scroll-locked, html.scroll-locked {
	overflow: hidden !important;
	max-height: 100vh !important
}

input {
	-webkit-appearance: none;
	-webkit-border-radius: 0;
	margin: 0;
	padding: 0
}

:-webkit-direct-focus {
	outline: none !important
}

:focus {
	outline: none !important
}

textarea {
	-webkit-appearance: none;
	-webkit-border-radius: 0
}

button:focus, input:focus, select:focus, textarea:focus {
	outline: none
}

p {
	margin: 0;
	padding: 0
}

* {
	font-family: NotoSansKR, sans-serif
}

#app {
	margin: 0;
	padding: 0
}

#body, #wrapper {
	display: block;
	width: 100%
}

#body {
	max-width: 928px;
	margin: 0 auto;
	background-color: #fff
}

.vfc-modal-time-line {
	background-color: #000 !important
}

.vfc-time-picker__item--selected {
	color: #000 !important
}

.vfc-today:not(.vfc-marked) {
	position: relative;
	background-color: #fff !important;
	color: #000 !important
}

.vfc-today:not(.vfc-marked):before {
	content: "";
	position: absolute;
	left: 50%;
	top: -1px;
	transform: translate(-50%);
	width: 5px;
	height: 5px;
	background-color: #f1c331;
	border-radius: 50%
}

.vfc-hover:hover, .vfc-hovered, .vfc-marked {
	background-color: #000 !important;
	color: #fff !important
}

.vfc-cursor-not-allowed {
	pointer-events: none !important
}

.vfc-close {
	top: 13px !important
}

.ck-editor__editable {
	min-height: 160px !important
}

[pg-component=header] .ghost-head[data-v-7264aa5c] {
	display: block;
	width: 100%;
	height: 52px
}

[pg-component=header] .ghost-foot[data-v-7264aa5c] {
	display: block;
	width: 100%;
	height: 34px
}

[pg-component=header] .header[data-v-7264aa5c] {
	width: 100%;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	background-color: #000
}

[pg-component=header] .header>.head[data-v-7264aa5c] {
	display: flex;
	align-items: center;
	height: 52px;
	width: 100%;
	max-width: 928px;
	padding-left: 16px;
	box-sizing: border-box;
	margin: 0 auto
}

[pg-component=header] .header>.head>.logo-wrapper[data-v-7264aa5c] {
	transform: translateY(5%);
	text-decoration: none
}

[pg-component=header] .header>.head>.logo-wrapper>.logo[data-v-7264aa5c]
	{
	width: auto;
	height: 27px
}

[pg-component=header] .header>.head>.right-box[data-v-7264aa5c] {
	margin-left: auto;
	margin-right: 6px;
	display: flex;
	height: 100%
}

[pg-component=header] .header>.head>.right-box>.login-button[data-v-7264aa5c]
	{
	display: flex;
	height: 100%;
	align-items: center;
	justify-content: center;
	width: 52px;
	text-decoration: none;
	cursor: pointer
}

[pg-component=header] .header>.head>.right-box>.login-button[data-v-7264aa5c]:hover
	{
	background-color: hsla(0, 0%, 100%, .07)
}

[pg-component=header] .header>.head>.right-box>.login-button>span[data-v-7264aa5c]
	{
	color: #fff;
	font-family: sans-serif;
	font-weight: 700;
	font-size: 13px;
	line-height: 1em;
	transform: translateY(6%);
	text-decoration: none
}

[pg-component=header] .header>.head>.right-box>.profile[data-v-7264aa5c]
	{
	display: flex;
	height: 100%;
	align-items: center;
	justify-content: center;
	width: 46.8px;
	text-decoration: none;
	cursor: pointer
}

[pg-component=header] .header>.head>.right-box>.profile>.image[data-v-7264aa5c]
	{
	width: 25px;
	height: 25px;
	background-color: #eee;
	background-position: 50%;
	background-size: cover;
	border-radius: 50%
}

[pg-component=header] .header>.head>.right-box>.more-button[data-v-7264aa5c]
	{
	display: flex;
	justify-content: center;
	align-items: center;
	width: 52px;
	height: 100%;
	cursor: pointer
}

[pg-component=header] .header>.head>.right-box>.more-button[data-v-7264aa5c]:hover
	{
	background-color: hsla(0, 0%, 100%, .07)
}

[pg-component=header] .header>.head>.right-box>.more-button>.icon[data-v-7264aa5c]
	{
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	width: 25px;
	align-items: center
}

[pg-component=header] .header>.head>.right-box>.more-button>.icon>.dot[data-v-7264aa5c]
	{
	width: 5px;
	height: 5px;
	border-radius: 50%;
	background-color: #fff
}

[pg-component=header] .header>.foot[data-v-7264aa5c] {
	background-color: #000;
	max-width: 928px;
	margin: -10px auto 0
}

[pg-component=header] .header>.foot>.contents-box[data-v-7264aa5c] {
	width: 100%;
	padding-left: 16px;
	box-sizing: border-box
}

[pg-component=header] .header>.foot>.contents-box>.tabs[data-v-7264aa5c]
	{
	display: flex;
	height: 44px
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab[data-v-7264aa5c]
	{
	display: inline-flex;
	align-items: center;
	height: 100%;
	cursor: pointer;
	text-decoration: none
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab[data-v-7264aa5c]:hover
	{
	background-color: hsla(0, 0%, 100%, .07)
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab[data-v-7264aa5c]:not(:first-child)
	{
	margin-left: 12px
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab>.label[data-v-7264aa5c]
	{
	position: relative;
	font-size: 17px;
	font-weight: 700;
	transition: color .12s
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab>.label[data-v-7264aa5c]:after
	{
	content: "";
	width: 100%;
	height: 2px;
	position: absolute;
	left: 0;
	bottom: -2px;
	background-color: #f1c331;
	pointer-events: none;
	transition: opacity .12s
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab:not([data-selected=true])>.label[data-v-7264aa5c]
	{
	color: hsla(0, 0%, 100%, .6)
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab:not([data-selected=true])>.label[data-v-7264aa5c]:after
	{
	opacity: 0
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab[data-selected=true]>.label[data-v-7264aa5c]
	{
	color: #fff
}

[pg-component=header] .header>.foot>.contents-box>.tabs>.tab[data-selected=true]>.label[data-v-7264aa5c]:after
	{
	opacity: 1
}

[pg-component=header] .header>.after-foot-wrapper[data-v-7264aa5c] {
	max-width: 928px;
	margin: -8px auto 0
}

[fg-component=match-filter][data-v-0c6c33f2] {
	position: relative;
	width: 100%
}

[fg-component=match-filter]>.contents-box[data-v-0c6c33f2] {
	display: flex;
	padding: 0 16px;
	width: 100%;
	height: 42px;
	box-sizing: border-box;
	background-color: #000;
	align-items: center
}

[fg-component=match-filter]>.contents-box>.left-box[data-v-0c6c33f2] {
	display: flex;
	align-items: center;
	height: 100%
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box[data-v-0c6c33f2]
	{
	display: flex;
	align-items: center;
	cursor: pointer;
	height: 100%
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box>.logo[data-v-0c6c33f2]
	{
	display: block;
	width: auto;
	height: 14px
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box>.value[data-v-0c6c33f2]
	{
	display: block;
	position: relative;
	margin-left: 7px
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box>.value[fg-fix-point-bug=true][data-v-0c6c33f2]
	{
	transform: translateY(-1px)
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box>.value[data-v-0c6c33f2]:after
	{
	content: "";
	position: absolute;
	bottom: -2px;
	left: 0;
	width: 100%;
	height: 1px;
	background-color: hsla(0, 0%, 100%, .5)
}

[fg-component=match-filter]>.contents-box>.left-box>.location-box>.value>.text[data-v-0c6c33f2]
	{
	display: block;
	white-space: pre;
	position: relative;
	font-family: NotoSansKR, sans-serif;
	font-weight: 500;
	font-size: 13px;
	color: #fff;
	line-height: 1em
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box[data-v-0c6c33f2]
	{
	display: flex;
	align-items: center;
	margin-left: 20px;
	cursor: pointer;
	height: 100%
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box>.logo[data-v-0c6c33f2]
	{
	display: block;
	width: auto;
	height: 14px
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box>.value[data-v-0c6c33f2]
	{
	display: block;
	position: relative;
	margin-left: 10px
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box>.value[fg-fix-point-bug=true][data-v-0c6c33f2]
	{
	transform: translateY(-1px)
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box>.value[data-v-0c6c33f2]:after
	{
	content: "";
	position: absolute;
	bottom: -2px;
	left: 0;
	width: 100%;
	height: 1px;
	background-color: hsla(0, 0%, 100%, .5)
}

[fg-component=match-filter]>.contents-box>.left-box>.calendar-box>.value>.text[data-v-0c6c33f2]
	{
	display: block;
	white-space: pre;
	position: relative;
	font-family: NotoSansKR, sans-serif;
	font-weight: 500;
	font-size: 13px;
	color: #fff;
	line-height: 1em
}

[fg-component=match-filter]>.contents-box>.right-box[data-v-0c6c33f2] {
	margin-left: auto;
	height: 100%
}

[fg-component=match-filter]>.contents-box>.right-box>.sort-box[data-v-0c6c33f2]
	{
	display: flex;
	height: 100%
}

[fg-component=match-filter]>.contents-box>.right-box>.sort-box>.sort-button[data-v-0c6c33f2]
	{
	display: flex;
	align-items: center;
	cursor: pointer;
	height: 100%;
	padding-left: 6px;
	padding-right: 6px
}

[fg-component=match-filter]>.contents-box>.right-box>.sort-box>.sort-button>.text[data-v-0c6c33f2]
	{
	white-space: pre;
	display: block;
	line-height: 1em;
	font-family: NotoSansKR, sans-serif;
	font-weight: 500;
	font-size: 12px;
	color: #fff
}

[fg-component=match-filter]>.contents-box>.right-box>.sort-box>.sort-button[data-selected="1"]>.text[data-v-0c6c33f2]
	{
	font-weight: 700;
	color: #f1c331
}

[fg-component=match-filter]>.contents-box>.right-box>.sort-box>.sort-button[data-v-0c6c33f2]:last-child
	{
	margin-right: -6px
}

[fg-page=matches-edit][data-v-3fd80680] {
	display: block;
	max-width: 480px;
	margin: 0 auto
}

[fg-page=matches-edit]>.contents-box[data-v-3fd80680] {
	padding: 0 16px 32px
}

[fg-page=matches-edit]>.contents-box .grid-2[data-v-3fd80680] {
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 1fr 1fr
}

[fg-page=matches-edit]>.contents-box .grid-3[data-v-3fd80680] {
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 1fr 1fr 1fr
}

[fg-page=matches-edit]>.contents-box .grid-3_1[data-v-3fd80680] {
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 3fr 1fr
}

[fg-page=matches-edit]>.contents-box>.gap[data-v-3fd80680] {
	display: block;
	clear: both;
	width: 100%;
	height: 18px
}

[fg-page=matches-edit]>.buttons[data-v-3fd80680] {
	display: grid;
	grid-template-columns: 1fr 3fr
}

@media screen and (max-width:927px) {
	[fg-page=matches-edit]>.buttons[data-v-3fd80680] {
		position: fixed;
		z-index: 10;
		left: -1px;
		bottom: 0;
		width: calc(100% + 2px)
	}
}

@media screen and (min-width:928px) {
	[fg-page=matches-edit]>.buttons[data-v-3fd80680] {
		position: fixed;
		z-index: 10;
		left: calc(50% - 1px);
		transform: translateX(-50%);
		bottom: 0;
		width: 930px
	}
}

[fg-component=page-head][data-v-ba66ebe6] {
	display: block;
	width: 100%;
	padding: 32px 16px;
	box-sizing: border-box
}

@media screen and (max-width:374px) {
	[fg-component=page-head][data-v-ba66ebe6] {
		padding: 16px
	}
}

[fg-component=page-head]>.title[data-v-ba66ebe6] {
	color: #000;
	font-family: NotoSansKR, sans-serif;
	font-size: 20px;
	letter-spacing: -.01em;
	font-weight: 500;
	line-height: 1em
}

[fg-component=page-head]>.subtitle-wrapper[data-v-ba66ebe6] {
	margin-top: 10.6666666667px
}

[fg-component=page-head]>.subtitle-wrapper>.subtitle[data-v-ba66ebe6] {
	color: rgba(0, 0, 0, .6);
	font-family: NotoSansKR, sans-serif;
	font-size: 13px;
	letter-spacing: -.01em;
	font-weight: 400;
	line-height: 1.5em
}

[fg-component=page-head]>.before-end-wrapper[data-v-ba66ebe6] {
	margin-top: 10.6666666667px
}

[fg-component=field][data-v-da260252] {
	width: 100%;
	display: block
}

[fg-component=field]>.header[data-v-da260252] {
	display: flex;
	align-items: center
}

[fg-component=field]>.header>.title[data-v-da260252] {
	color: #000
}

[fg-component=field]>.header>.message[data-v-da260252], [fg-component=field]>.header>.title[data-v-da260252]
	{
	font-family: NotoSansKR, sans-serif;
	font-size: 14px;
	font-weight: 500;
	line-height: 1em
}

[fg-component=field]>.header>.message[data-v-da260252] {
	color: #000;
	margin-left: auto;
	font-size: 11px;
	color: #ff4338
}

[fg-component=field]>.slot[data-v-da260252] {
	margin-top: 8px
}

[fg-component=button][data-v-bb65a0aa], [fg-component=button]>*[data-v-bb65a0aa]
	{
	width: 100%;
	display: block;
	text-decoration: none
}

[fg-component=button]>*>.button[data-v-bb65a0aa] {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 45px;
	box-sizing: border-box;
	border: 1px solid #000;
	border-color: var(- -border-color);
	background-color: var(- -background-color)
}

[fg-component=button]>*>.button>.text[data-v-bb65a0aa] {
	font-family: NotoSansKR, sans-serif;
	line-height: 1em;
	color: #000;
	font-weight: 500;
	font-size: 14px
}

[fg-component=button]>:not([pf-disabled=true]):hover>.button[data-v-bb65a0aa],
	[fg-component=button]>[fg-theme=primary]>.button[data-v-bb65a0aa] {
	border-color: var(- -background-hover-color);
	background-color: var(- -background-hover-color)
}

[fg-component=button]>:not([pf-disabled=true]):hover>.button>.text[data-v-bb65a0aa],
	[fg-component=button]>[fg-theme=primary]>.button>.text[data-v-bb65a0aa]
	{
	color: #fff
}

[fg-component=button]>[fg-size=big]>.button[data-v-bb65a0aa] {
	height: 48px
}

[fg-component=drop-down][data-v-49befa26] {
	position: relative;
	display: block;
	width: 100%;
	cursor: pointer;
	text-decoration: none
}

[fg-component=drop-down]>.box[data-v-49befa26] {
	align-items: center;
	display: flex;
	width: 100%;
	height: 45px;
	border: 1px solid #000;
	box-sizing: border-box
}

[fg-component=drop-down]>.box>.text[data-v-49befa26] {
	font-family: NotoSansKR, sans-serif;
	color: #000;
	line-height: 1em;
	font-size: 14px;
	font-weight: 400;
	padding-left: 8px
}

[fg-component=drop-down]>.box>.icon[data-v-49befa26] {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 45px;
	height: 45px;
	margin-left: auto;
	border-left: 1px solid #000
}

[fg-component=drop-down]>.box>.icon>.image[data-v-49befa26] {
	width: 12px;
	height: auto
}

[fg-component=drop-down]>select[data-v-49befa26] {
	top: 0;
	width: 100%;
	position: absolute;
	left: 0;
	height: 100%;
	opacity: 0;
	-webkit-appearance: none;
	-webkit-border-radius: 0
}

[fg-component=date-field][data-v-afd109cc] {
	display: block;
	width: 100%
}

[fg-component=date-field]>.field[data-v-afd109cc] {
	display: block;
	width: 100%;
	box-sizing: border-box;
	height: 45px;
	display: flex;
	align-items: center;
	border: 1px solid #000;
	cursor: pointer
}

[fg-component=date-field]>.field>.placeholder[data-v-afd109cc], [fg-component=date-field]>.field>.text[data-v-afd109cc]
	{
	padding-left: 8px;
	font-size: 14px;
	font-weight: 400;
	color: #000;
	font-family: NotoSansKR, sans-serif;
	transform: translateY(6%)
}

[fg-component=date-field]>.field>.placeholder[data-v-afd109cc] {
	opacity: .5
}

[fg-component=date-field]>.field>.icon[data-v-afd109cc] {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 45px;
	height: 100%;
	margin-left: auto;
	pointer-events: none
}

[fg-component=date-field]>.field>.icon>.image[data-v-afd109cc] {
	width: 15px;
	height: auto
}

[fg-component=date-field]>.popup-wrapper[data-v-afd109cc] {
	position: fixed;
	z-index: 11;
	width: 100vw;
	height: 100vh;
	left: 0;
	top: 0
}

[fg-component=date-field]>.popup-wrapper>.background[data-v-afd109cc] {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .75)
}

[fg-component=date-field]>.popup-wrapper>.container[data-v-afd109cc] {
	position: absolute;
	width: calc(100% - 32px);
	left: 50%;
	top: 50%;
	max-width: 480px;
	transform: translate(-50%, calc(-50% + 24px))
}

[fg-component=date-field]>.popup-wrapper>.container>.calendar[data-v-afd109cc]
	{
	height: 328px;
	width: 100%;
	background-color: #fff;
	border-radius: 4px
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper[data-v-afd109cc]
	{
	display: flex;
	margin-top: 8px;
	position: relative;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0 2px 15px 0 rgba(0, 0, 0, .25);
	height: 119px;
	box-sizing: border-box
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.end-date-box[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.start-date-box[data-v-afd109cc]
	{
	flex: 1;
	padding: 12px;
	box-sizing: border-box
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.end-date-box>.title[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.start-date-box>.title[data-v-afd109cc]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 400;
	text-align: center;
	margin-bottom: 4px
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.end-date-box>.dials[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.start-date-box>.dials[data-v-afd109cc]
	{
	display: flex
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.end-date-box>.dials>*[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.start-date-box>.dials>*[data-v-afd109cc]
	{
	flex: 1
}

[fg-component=date-field]>.popup-wrapper>.container>.times-wrapper>.end-date-box[data-v-afd109cc]
	{
	margin-left: 8px;
	border-left: 1px solid rgba(0, 0, 0, .15)
}

[fg-component=date-field]>.popup-wrapper>.container>.buttons[data-v-afd109cc]
	{
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 1fr 1fr
}

[fg-component=date-field]>.popup-wrapper>.container>.buttons>.confirm-button[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.buttons>.reset-button[data-v-afd109cc]
	{
	display: flex;
	height: 48px;
	padding: 0 24px;
	margin-top: 8px;
	align-items: center;
	justify-content: center;
	cursor: pointer;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0 2px 15px 0 rgba(0, 0, 0, .25)
}

[fg-component=date-field]>.popup-wrapper>.container>.buttons>.confirm-button>.text[data-v-afd109cc],
	[fg-component=date-field]>.popup-wrapper>.container>.buttons>.reset-button>.text[data-v-afd109cc]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 500;
	letter-spacing: .025em;
	transform: translateY(6%)
}

[fg-component=date-field]>.popup-wrapper>.container>.buttons>.confirm-button[data-v-afd109cc]:not([pf-active=true])
	{
	background-color: #eee;
	pointer-events: none
}

[fg-component=date-field]>.popup-wrapper>.container>.buttons>.confirm-button:not([pf-active=true])>.text[data-v-afd109cc]
	{
	opacity: .25
}

[fg-component=text-field][data-v-0d46a6dc] {
	display: block;
	width: 100%
}

[fg-component=text-field]>input[data-v-0d46a6dc], [fg-component=text-field]>textarea[data-v-0d46a6dc]
	{
	display: block;
	width: 100%;
	font-size: 14px;
	font-weight: 400;
	box-sizing: border-box;
	padding: 12px 8px;
	border: 1px solid #000;
	border-radius: 0;
	-webkit-appearance: none;
	-webkit-border-radius: 0
}

[fg-component=text-field]>textarea[data-v-0d46a6dc] {
	resize: none;
	height: 96px
}

[fg-component=editor][data-v-41d0030c] {
	display: block;
	background-color: #fff;
	border: 1px solid #000
}

[fg-component=editor][data-v-41d0030c]  .menubar {
	border-bottom: 1px solid #000;
	padding: 4px;
	box-sizing: border-box
}

@media screen and (min-width:415px) {
	[fg-component=editor][data-v-41d0030c]  .menubar {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr
	}
}

@media screen and (max-width:414px) {
	[fg-component=editor][data-v-41d0030c]  .menubar {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr
	}
}

@media screen and (max-width:374px) {
	[fg-component=editor][data-v-41d0030c]  .menubar {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr
	}
}

[fg-component=editor][data-v-41d0030c]  .menubar>.menu-button {
	display: flex;
	justify-content: center;
	align-items: center;
	border: none;
	padding: 0;
	background-color: #fff;
	height: 32px;
	min-width: 32px;
	cursor: pointer;
	border-radius: 8px;
	margin: 0 0 0 4px
}

[fg-component=editor][data-v-41d0030c]  .menubar>.menu-button:first-child
	{
	margin-left: 0
}

[fg-component=editor][data-v-41d0030c]  .menubar>.menu-button:hover {
	background-color: rgba(0, 0, 0, .05)
}

[fg-component=editor][data-v-41d0030c]  .menubar>.menu-button.is-active
	{
	background-color: rgba(0, 0, 0, .1)
}

[fg-component=editor][data-v-41d0030c]  .menubar>.menu-button>.icon {
	display: block;
	width: 14px;
	height: 14px
}

[fg-component=editor]>.content[data-v-41d0030c] {
	padding: 12px;
	box-sizing: border-box
}

[fg-component=editor]>.content[data-v-41d0030c]  p {
	font-size: 14px;
	font-family: NotoSansKR, sans-serif
}

[fg-component=editor]>.content[data-v-41d0030c]  a {
	color: #000;
	font-weight: 700;
	color: #1a5aee
}

[fg-component=editor]>.content[data-v-41d0030c]  img {
	max-width: 100%
}

[fg-component=editor]>.content[data-v-41d0030c]  p.is-editor-empty:first-child:before
	{
	content: attr(data-empty-text);
	float: left;
	color: #aaa;
	pointer-events: none;
	height: 0;
	font-size: 14px;
	font-style: normal;
	font-family: NotoSansKR, sans-serif
}

[fg-component=editor]>.content[data-v-41d0030c]  .ProseMirror {
	min-height: 120px
}

[fg-component=match-filter-calendar][data-v-42084082] {
	position: fixed;
	z-index: 11;
	width: 100vw;
	height: 100vh;
	left: 0;
	top: 0
}

[fg-component=match-filter-calendar]>.background[data-v-42084082] {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .6)
}

[fg-component=match-filter-calendar]>.contents-box[data-v-42084082] {
	position: absolute;
	width: calc(100% - 32px);
	left: 50%;
	top: 50%;
	max-width: 480px;
	transform: translate(-50%, -50%)
}

[fg-component=match-filter-calendar]>.contents-box>.calendar[data-v-42084082]
	{
	width: 100%;
	background-color: #fff;
	border-radius: 4px;
	height: 328px
}

[fg-component=match-filter-calendar]>.contents-box>.buttons[data-v-42084082]
	{
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 1fr 1fr
}

[fg-component=match-filter-calendar]>.contents-box>.buttons>.confirm-button[data-v-42084082],
	[fg-component=match-filter-calendar]>.contents-box>.buttons>.reset-button[data-v-42084082]
	{
	display: flex;
	height: 48px;
	padding: 0 24px;
	margin-top: 8px;
	align-items: center;
	justify-content: center;
	cursor: pointer;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0 2px 15px 0 rgba(0, 0, 0, .25)
}

[fg-component=match-filter-calendar]>.contents-box>.buttons>.confirm-button>.text[data-v-42084082],
	[fg-component=match-filter-calendar]>.contents-box>.buttons>.reset-button>.text[data-v-42084082]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 500;
	letter-spacing: .025em;
	transform: translateY(6%)
}

[fg-component=match-filter-calendar]>.contents-box>.buttons>.confirm-button[data-v-42084082]:not([pf-active=true])
	{
	background-color: #eee;
	pointer-events: none
}

[fg-component=match-filter-calendar]>.contents-box>.buttons>.confirm-button:not([pf-active=true])>.text[data-v-42084082]
	{
	opacity: .25
}

[fg-component=match-filter-calendar]>.close-button[data-v-42084082] {
	position: absolute;
	top: 0;
	right: 0;
	width: 52px;
	height: 52px
}

[fg-component=match-filter-calendar]>.close-button[data-v-42084082]:after,
	[fg-component=match-filter-calendar]>.close-button[data-v-42084082]:before
	{
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	content: "";
	width: 2px;
	height: 24px;
	background-color: hsla(0, 0%, 100%, .8)
}

[fg-component=match-filter-calendar]>.close-button[data-v-42084082]:before
	{
	transform: translate(-50%, -50%) rotate(45deg)
}

[fg-component=match-filter-calendar]>.close-button[data-v-42084082]:after
	{
	transform: translate(-50%, -50%) rotate(135deg)
}

[fg-component=match-filter-area][data-v-0514e4f0] {
	position: fixed;
	z-index: 11;
	width: 100vw;
	height: 100vh;
	left: 0;
	top: 0
}

[fg-component=match-filter-area]>.background[data-v-0514e4f0] {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .6)
}

[fg-component=match-filter-area]>.wrapper[data-v-0514e4f0] {
	position: absolute;
	width: calc(100% - 32px);
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	max-width: 480px
}

[fg-component=match-filter-area]>.wrapper>.contents-box[data-v-0514e4f0]
	{
	height: 65vh;
	box-sizing: border-box;
	padding: 24px;
	background-color: #fff;
	border-radius: 8px;
	overflow-y: scroll
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group[data-v-0514e4f0]:not(:first-child)
	{
	margin-top: 24px
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.city-name[data-v-0514e4f0]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 17px;
	font-weight: 500;
	margin-bottom: 12px
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area[data-v-0514e4f0]
	{
	display: flex;
	border-top: 1px solid rgba(0, 0, 0, .2);
	height: 36px;
	cursor: pointer
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area[data-v-0514e4f0]:last-child
	{
	border-bottom: 1px solid rgba(0, 0, 0, .2)
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area>.checkbox-column[data-v-0514e4f0]
	{
	display: flex;
	align-items: center;
	justify-content: center;
	width: 24px;
	height: 100%
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area>.checkbox-column>.checkbox[data-v-0514e4f0]
	{
	position: relative;
	width: 20px;
	height: 20px;
	border: 1px solid #000;
	border-radius: 50%
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area[fg-selected=true]>.checkbox-column>.checkbox[data-v-0514e4f0]:before
	{
	content: "";
	position: absolute;
	width: 11px;
	height: 11px;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: #000;
	border-radius: 50%
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area>.name-column[data-v-0514e4f0]
	{
	display: flex;
	align-items: center;
	height: 100%;
	margin-left: 6px
}

[fg-component=match-filter-area]>.wrapper>.contents-box>.area-group>.area>.name-column>.text[data-v-0514e4f0]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 500;
	transform: translateY(6%)
}

[fg-component=match-filter-area]>.wrapper>.buttons[data-v-0514e4f0] {
	display: grid;
	grid-gap: 8px;
	grid-template-columns: 1fr 1fr
}

[fg-component=match-filter-area]>.wrapper>.buttons>.confirm-button[data-v-0514e4f0],
	[fg-component=match-filter-area]>.wrapper>.buttons>.reset-button[data-v-0514e4f0]
	{
	display: flex;
	height: 48px;
	padding: 0 24px;
	margin-top: 8px;
	align-items: center;
	justify-content: center;
	cursor: pointer;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0 2px 15px 0 rgba(0, 0, 0, .25)
}

[fg-component=match-filter-area]>.wrapper>.buttons>.confirm-button>.text[data-v-0514e4f0],
	[fg-component=match-filter-area]>.wrapper>.buttons>.reset-button>.text[data-v-0514e4f0]
	{
	font-family: NotoSansKR, sans-serif;
	color: #000;
	font-size: 14px;
	font-weight: 500;
	letter-spacing: .025em;
	transform: translateY(6%)
}

[fg-component=match-filter-area]>.close-button[data-v-0514e4f0] {
	position: absolute;
	top: 0;
	right: 0;
	width: 52px;
	height: 52px
}

[fg-component=match-filter-area]>.close-button[data-v-0514e4f0]:after, [fg-component=match-filter-area]>.close-button[data-v-0514e4f0]:before
	{
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	content: "";
	width: 2px;
	height: 24px;
	background-color: hsla(0, 0%, 100%, .8)
}

[fg-component=match-filter-area]>.close-button[data-v-0514e4f0]:before {
	transform: translate(-50%, -50%) rotate(45deg)
}

[fg-component=match-filter-area]>.close-button[data-v-0514e4f0]:after {
	transform: translate(-50%, -50%) rotate(135deg)
}

[pg-component=sidebar][data-v-a26a7288] {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 20;
	background-color: rgba(0, 0, 0, .4);
	transition: opacity .2s
}

[pg-component=sidebar]>.close-area[data-v-a26a7288] {
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0
}

[pg-component=sidebar]>.contents-box[data-v-a26a7288] {
	position: absolute;
	width: 70%;
	max-width: 280px;
	height: 100%;
	top: 0;
	right: 0;
	background-color: #fff;
	padding: 16px;
	box-sizing: border-box;
	box-shadow: 0 0 32px rgba(0, 0, 0, .08);
	transition: transform .2s
}

[pg-component=sidebar]>.contents-box>.close-button[data-v-a26a7288] {
	position: absolute;
	top: 0;
	right: 0;
	width: 56px;
	height: 56px;
	cursor: pointer
}

[pg-component=sidebar]>.contents-box>.close-button[data-v-a26a7288]:after,
	[pg-component=sidebar]>.contents-box>.close-button[data-v-a26a7288]:before
	{
	content: "";
	position: absolute;
	display: block;
	left: 50%;
	top: 50%;
	width: 22px;
	height: 2px;
	background-color: #000
}

[pg-component=sidebar]>.contents-box>.close-button[data-v-a26a7288]:after
	{
	transform: translate(-50%, -50%) rotate(45deg)
}

[pg-component=sidebar]>.contents-box>.close-button[data-v-a26a7288]:before
	{
	transform: translate(-50%, -50%) rotate(135deg)
}

[pg-component=sidebar]>.contents-box>.menus>.menu[data-v-a26a7288] {
	display: flex;
	align-items: center;
	margin-bottom: 10.6666666667px;
	text-decoration: none;
	cursor: pointer
}

[pg-component=sidebar]>.contents-box>.menus>.menu>.icon[data-v-a26a7288]
	{
	width: 26px;
	height: 26px;
	padding: 1px
}

[pg-component=sidebar]>.contents-box>.menus>.menu>.text[data-v-a26a7288]
	{
	position: relative;
	margin-left: 12px;
	font-family: NotoSansKR, sans-serif;
	font-size: 16px;
	font-weight: 500;
	transform: translateY(6%);
	color: #000;
	text-decoration: none
}

[pg-component=sidebar]>.contents-box>.menus>.menu>.text>.count[data-v-a26a7288]
	{
	position: absolute;
	top: 0;
	right: -4px;
	height: 17px;
	min-width: 17px;
	padding: 0 5px;
	box-sizing: border-box;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #fd3b3b;
	border-radius: 9999px;
	text-decoration: none;
	transform: translate(100%, -3%)
}

[pg-component=sidebar]>.contents-box>.menus>.menu>.text>.count>span[data-v-a26a7288]
	{
	color: #fff;
	font-size: 11px;
	font-weight: 700;
	transform: translateY(6%);
	line-height: 1em;
	text-decoration: none
}

[pg-component=sidebar]>.contents-box>.menus>.comment[data-v-a26a7288] {
	font-family: NotoSansKR, sans-serif;
	font-size: 12px;
	font-weight: 700;
	line-height: 1.4em;
	margin-bottom: 16px;
	color: rgba(0, 0, 0, .8)
}

[pg-component=sidebar]>.contents-box>.menus>.divider[data-v-a26a7288] {
	width: 100%;
	height: 1px;
	background-color: rgba(0, 0, 0, .16);
	margin-top: 16px;
	margin-bottom: 16px
}

[pg-component=sidebar][data-v-a26a7288]:not([data-opened=true]) {
	opacity: 0 !important;
	pointer-events: none !important
}

[pg-component=sidebar]:not([data-opened=true])>.contents-box[data-v-a26a7288]
	{
	transform: translateX(100%) !important
}

[pg-component=sidebar][data-opened=true][data-v-a26a7288] {
	opacity: 1 !important
}

[pg-component=sidebar][data-opened=true]>.contents-box[data-v-a26a7288]
	{
	transform: translateX(0) !important
}

[pg-component=footer][data-v-2f889624] {
	background-color: #000;
	max-width: 928px;
	margin: 0 auto
}

[pg-component=footer]>.contents-box[data-v-2f889624] {
	position: relative;
	width: calc(100% - 32px);
	margin: 0 auto;
	padding: 24px 0
}

[pg-component=footer]>.contents-box>.buttons[data-v-2f889624] {
	position: relative;
	display: block;
	padding-bottom: 16px;
	margin-bottom: 16px;
	border-bottom: 1px solid hsla(0, 0%, 100%, .16)
}

[pg-component=footer]>.contents-box>.buttons>.button[data-v-2f889624] {
	display: block;
	text-decoration: none;
	flex: 1;
	font-family: NotoSansKR, sans-serif;
	color: #fff;
	font-weight: 700;
	font-size: 14px;
	cursor: pointer
}

[pg-component=footer]>.contents-box>.buttons>.button[data-v-2f889624]:not(:first-child)
	{
	margin-top: 12px
}

[pg-component=footer]>.contents-box>.buttons>.sns-buttons[data-v-2f889624]
	{
	display: flex;
	position: absolute;
	bottom: 12px;
	right: 0
}

[pg-component=footer]>.contents-box>.buttons>.sns-buttons>.sns-button[data-v-2f889624]:not(:first-child)
	{
	margin-left: 16px
}

[pg-component=footer]>.contents-box>.buttons>.sns-buttons>.sns-button>.image[data-v-2f889624]
	{
	width: auto;
	height: 24px
}

[pg-component=footer]>.contents-box>.information[data-v-2f889624] {
	color: #fff;
	font-family: NotoSansKR, sans-serif;
	font-size: 13px;
	line-height: 2em;
	margin-top: 8px;
	margin-bottom: 64px;
	word-wrap: break-word;
	word-break: break-all
}

[pg-component=footer]>.contents-box>.information>a[data-v-2f889624] {
	color: #fff;
	font-weight: 700;
	text-decoration: none
}
</style>
</head>
<body>
	<div data-server-rendered="true" id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div id="wrapper">
					<div pg-component="header" data-v-7264aa5c>
						<div class="ghost-head" data-v-7264aa5c></div>
						<div class="ghost-foot" style="display:;" data-v-7264aa5c></div>
						<div class="header" data-v-7264aa5c>
							<section class="head" data-v-7264aa5c>
								<a href="/brand" class="logo-wrapper" data-v-7264aa5c><img
									alt="logo" src="/_nuxt/img/16ed589.svg" class="logo"
									data-v-7264aa5c></a>
								<div class="right-box" data-v-7264aa5c>
									<!---->
									<a href="/my-page" class="profile" data-v-7264aa5c><div
											class="image"
											style="background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDI0LjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA1NiA1NiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTYgNTY7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4KCS5zdDB7ZmlsbDojNEQ0RDREO30KPC9zdHlsZT4KPGNpcmNsZSBjbGFzcz0ic3QwIiBjeD0iMjgiIGN5PSIxOS4xIiByPSIxMCIvPgo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNDcuNSw0My43Yy0xLjYtNy4zLTcuMi0xMy0xNC4zLTE1Yy0xLjYsMC44LTMuMywxLjMtNS4yLDEuM3MtMy43LTAuNS01LjItMS4zYy03LjEsMS45LTEyLjcsNy43LTE0LjMsMTUKCUM4LDQ2LDkuNyw0OC4xLDEyLDQ4LjFjNy43LDAsMjQuMywwLDMyLDBDNDYuMyw0OC4xLDQ4LDQ2LDQ3LjUsNDMuN3oiLz4KPC9zdmc+Cg==);"
											data-v-7264aa5c></div></a>
									<div class="more-button" data-v-7264aa5c>
										<div class="icon" data-v-7264aa5c>
											<div class="dot" data-v-7264aa5c></div>
											<div class="dot" data-v-7264aa5c></div>
											<div class="dot" data-v-7264aa5c></div>
										</div>
									</div>
								</div>
							</section>
							<section class="foot" style="display:;" data-v-7264aa5c>
								<div class="contents-box" data-v-7264aa5c>
									<div class="tabs" data-v-7264aa5c>
										<a href="/matches" data-selected="true"
											class="tab nuxt-link-active" data-v-7264aa5c><span
											class="label" data-v-7264aa5c>팀 매치</span></a> <a href="/recruits"
											class="tab" data-v-7264aa5c><span class="label"
											data-v-7264aa5c>용병 모집</span></a> <a href="/socials" class="tab"
											data-v-7264aa5c><span class="label" data-v-7264aa5c>소셜
												경기</span></a>
										<!---->
									</div>
								</div>
							</section>
							<div class="after-foot-wrapper" data-v-7264aa5c>
								<div fg-component="match-filter" style="display: none;"
									data-v-0c6c33f2>
									<div class="contents-box" data-v-0c6c33f2>
										<div class="left-box" data-v-0c6c33f2>
											<div class="location-box" data-v-0c6c33f2>
												<img
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNiAyNCI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOiNmMWMzMzE7fTwvc3R5bGU+PC9kZWZzPjxnIGlkPSJMYXllcl8yIiBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNOCwwQzMuOCwwLDAsMy40LDAsNy42UzMuNDcsMTYuODEsOCwyNGM0LjUzLTcuMTksOC0xMi4yLDgtMTYuNFMxMi4yLDAsOCwwWk04LDExYTMsMywwLDEsMSwzLTNBMywzLDAsMCwxLDgsMTFaIi8+PC9nPjwvZz48L3N2Zz4="
													class="logo" data-v-0c6c33f2>
												<div fg-fix-point-bug="true" class="value" data-v-0c6c33f2>
													<div class="text" data-v-0c6c33f2>지역 선택</div>
												</div>
											</div>
											<div class="calendar-box" data-v-0c6c33f2>
												<img
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9IiNmMWMzMzEiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBkPSJNMjQgMnYyMmgtMjR2LTIyaDN2MWMwIDEuMTAzLjg5NyAyIDIgMnMyLS44OTcgMi0ydi0xaDEwdjFjMCAxLjEwMy44OTcgMiAyIDJzMi0uODk3IDItMnYtMWgzem0tMiA2aC0yMHYxNGgyMHYtMTR6bS0yLTdjMC0uNTUyLS40NDctMS0xLTFzLTEgLjQ0OC0xIDF2MmMwIC41NTIuNDQ3IDEgMSAxczEtLjQ0OCAxLTF2LTJ6bS0xNCAyYzAgLjU1Mi0uNDQ3IDEtMSAxcy0xLS40NDgtMS0xdi0yYzAtLjU1Mi40NDctMSAxLTFzMSAuNDQ4IDEgMXYyem02LjY4NyAxMy40ODJjMC0uODAyLS40MTgtMS40MjktMS4xMDktMS42OTUuNTI4LS4yNjQuODM2LS44MDcuODM2LTEuNTAzIDAtMS4zNDYtMS4zMTItMi4xNDktMi41ODEtMi4xNDktMS40NzcgMC0yLjU5MS45MjUtMi42NTkgMi43NjNoMS42NDVjLS4wMTQtLjc2MS4yNzEtMS4zMTUgMS4wMjUtMS4zMTUuNDQ5IDAgLjkzMy4yNzIuOTMzLjg2OSAwIC43NTQtLjgxNi44NjItMS41NjcuNzk3djEuMjhjMS4wNjcgMCAxLjcwNC4wNjcgMS43MDQuOTg1IDAgLjcyNC0uNTQ4IDEuMDQ4LTEuMDkxIDEuMDQ4LS44MjIgMC0xLjE1OS0uNjE0LTEuMTg4LTEuNDUyaC0xLjYzNGMtLjAzMiAxLjg5MiAxLjExNCAyLjg5IDIuODQyIDIuODkgMS41NDMgMCAyLjg0NC0uOTQzIDIuODQ0LTIuNTE4em00LjMxMyAyLjUxOHYtNy43MThoLTEuMzkyYy0uMTczIDEuMTU0LS45OTUgMS40OTEtMi4xNzEgMS40NTl2MS4zNDZoMS44NTJ2NC45MTNoMS43MTF6Ii8+PC9zdmc+"
													class="logo" data-v-0c6c33f2>
												<div fg-fix-point-bug="true" class="value" data-v-0c6c33f2>
													<div class="text" data-v-0c6c33f2>전체 기간</div>
												</div>
											</div>
										</div>
										<div class="right-box" data-v-0c6c33f2>
											<div class="sort-box" data-v-0c6c33f2>
												<div data-selected="1" class="sort-button" data-v-0c6c33f2>
													<div class="text" data-v-0c6c33f2>시합날짜순</div>
												</div>
												<div data-selected="0" class="sort-button" data-v-0c6c33f2>
													<div class="text" data-v-0c6c33f2>등록순</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="body">
						<div fg-page="matches-edit" data-v-3fd80680>
							<div fg-component="page-head" data-v-ba66ebe6 data-v-3fd80680>
								<div class="title" data-v-ba66ebe6>매치 작성</div>
								<!---->
								<!---->
							</div>
							<div class="contents-box" data-v-3fd80680>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>긴급
											여부</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div class="grid-2" data-v-da260252 data-v-3fd80680>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="primary"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>일반</div>
													</div></a>
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>급구</div>
													</div></a>
											</div>
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>경기
											지역</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div fg-component="drop-down" data-v-49befa26 data-v-3fd80680>
											<div class="box" data-v-49befa26>
												<div class="text" data-v-49befa26>경기 지역을 선택해주세요</div>
												<div class="icon" data-v-49befa26>
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzNjYuMjggMjE4LjUiPjxnIGlkPSJMYXllcl8yIiBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBvbHlnb24gcG9pbnRzPSIxODMuMTQgMTQ3Ljc4IDM1LjM2IDAgMCAzNS4zNSAxODMuMTQgMjE4LjUgMzY2LjI4IDM1LjM1IDMzMC45MyAwIDE4My4xNCAxNDcuNzgiLz48L2c+PC9nPjwvc3ZnPg=="
														class="image" data-v-49befa26>
												</div>
											</div>
											<select data-v-49befa26><option value="도봉/노원/강북/중랑"
													data-v-49befa26>서울 - 도봉/노원/강북/중랑</option>
												<option value="성북/동대문/종로" data-v-49befa26>서울 -
													성북/동대문/종로</option>
												<option value="은평/서대문/마포" data-v-49befa26>서울 -
													은평/서대문/마포</option>
												<option value="용산/중구" data-v-49befa26>서울 - 용산/중구</option>
												<option value="성동/광진/강동" data-v-49befa26>서울 -
													성동/광진/강동</option>
												<option value="송파/서초/강남" data-v-49befa26>서울 -
													송파/서초/강남</option>
												<option value="양천/구로/영등포/강서" data-v-49befa26>서울 -
													양천/구로/영등포/강서</option>
												<option value="금천/관악/동작" data-v-49befa26>서울 -
													금천/관악/동작</option>
												<option value="수원/용인/화성/오산" data-v-49befa26>경기 -
													수원/용인/화성/오산</option>
												<option value="의정부/양주/그 외" data-v-49befa26>경기 -
													의정부/양주/그 외</option>
												<option value="과천/안양/군포/의왕" data-v-49befa26>경기 -
													과천/안양/군포/의왕</option>
												<option value="구리/남양주/하남" data-v-49befa26>경기 -
													구리/남양주/하남</option>
												<option value="인천/부천/김포" data-v-49befa26>경기 -
													인천/부천/김포</option>
												<option value="고양/파주" data-v-49befa26>경기 - 고양/파주</option>
												<option value="성남/광주/이천" data-v-49befa26>경기 -
													성남/광주/이천</option>
												<option value="시흥/안산/광명" data-v-49befa26>경기 -
													시흥/안산/광명</option>
												<option value="평택/안성" data-v-49befa26>경기 - 평택/안성</option></select>
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>매치
											방식</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div fg-component="drop-down" data-v-49befa26 data-v-3fd80680>
											<div class="box" data-v-49befa26>
												<div class="text" data-v-49befa26>매치 방식을 선택해주세요</div>
												<div class="icon" data-v-49befa26>
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzNjYuMjggMjE4LjUiPjxnIGlkPSJMYXllcl8yIiBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBvbHlnb24gcG9pbnRzPSIxODMuMTQgMTQ3Ljc4IDM1LjM2IDAgMCAzNS4zNSAxODMuMTQgMjE4LjUgMzY2LjI4IDM1LjM1IDMzMC45MyAwIDE4My4xNCAxNDcuNzgiLz48L2c+PC9nPjwvc3ZnPg=="
														class="image" data-v-49befa26>
												</div>
											</div>
											<select data-v-49befa26><option value="3 VS 3"
													data-v-49befa26>3 vs 3</option>
												<option value="4 VS 4" data-v-49befa26>4 vs 4</option>
												<option value="5 VS 5" data-v-49befa26>5 vs 5</option>
												<option value="6 VS 6" data-v-49befa26>6 vs 6</option>
												<option value="7 VS 7" data-v-49befa26>7 vs 7</option>
												<option value="8 VS 8" data-v-49befa26>8 vs 8</option>
												<option value="9 VS 9" data-v-49befa26>9 vs 9</option>
												<option value="10 VS 10" data-v-49befa26>10 vs 10</option>
												<option value="11 VS 11" data-v-49befa26>11 vs 11</option></select>
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>경기
											시간</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div fg-component="date-field" data-v-afd109cc data-v-3fd80680>
											<div class="field" data-v-afd109cc>
												<div class="placeholder" data-v-afd109cc>날짜/시간 선택</div>
												<!---->
												<div class="icon" data-v-afd109cc>
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9IiMwMDAwMDAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBkPSJNMjQgMnYyMmgtMjR2LTIyaDN2MWMwIDEuMTAzLjg5NyAyIDIgMnMyLS44OTcgMi0ydi0xaDEwdjFjMCAxLjEwMy44OTcgMiAyIDJzMi0uODk3IDItMnYtMWgzem0tMiA2aC0yMHYxNGgyMHYtMTR6bS0yLTdjMC0uNTUyLS40NDctMS0xLTFzLTEgLjQ0OC0xIDF2MmMwIC41NTIuNDQ3IDEgMSAxczEtLjQ0OCAxLTF2LTJ6bS0xNCAyYzAgLjU1Mi0uNDQ3IDEtMSAxcy0xLS40NDgtMS0xdi0yYzAtLjU1Mi40NDctMSAxLTFzMSAuNDQ4IDEgMXYyem02LjY4NyAxMy40ODJjMC0uODAyLS40MTgtMS40MjktMS4xMDktMS42OTUuNTI4LS4yNjQuODM2LS44MDcuODM2LTEuNTAzIDAtMS4zNDYtMS4zMTItMi4xNDktMi41ODEtMi4xNDktMS40NzcgMC0yLjU5MS45MjUtMi42NTkgMi43NjNoMS42NDVjLS4wMTQtLjc2MS4yNzEtMS4zMTUgMS4wMjUtMS4zMTUuNDQ5IDAgLjkzMy4yNzIuOTMzLjg2OSAwIC43NTQtLjgxNi44NjItMS41NjcuNzk3djEuMjhjMS4wNjcgMCAxLjcwNC4wNjcgMS43MDQuOTg1IDAgLjcyNC0uNTQ4IDEuMDQ4LTEuMDkxIDEuMDQ4LS44MjIgMC0xLjE1OS0uNjE0LTEuMTg4LTEuNDUyaC0xLjYzNGMtLjAzMiAxLjg5MiAxLjExNCAyLjg5IDIuODQyIDIuODkgMS41NDMgMCAyLjg0NC0uOTQzIDIuODQ0LTIuNTE4em00LjMxMyAyLjUxOHYtNy43MThoLTEuMzkyYy0uMTczIDEuMTU0LS45OTUgMS40OTEtMi4xNzEgMS40NTl2MS4zNDZoMS44NTJ2NC45MTNoMS43MTF6Ii8+PC9zdmc+"
														class="image" data-v-afd109cc>
												</div>
											</div>
											<!---->
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>
											경기장</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div class="grid-3_1" data-v-da260252 data-v-3fd80680>
											<div fg-component="text-field" data-v-0d46a6dc
												data-v-3fd80680>
												<input type="text" placeholder="경기장을 입력해주세요" autocomplete=""
													autocorrect="off" autocapitalize="none" spellcheck="false"
													data-v-0d46a6dc>
												<!---->
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="primary"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>지도 검색</div>
													</div></a>
											</div>
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>
											참가비</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div fg-component="text-field" data-v-0d46a6dc data-v-3fd80680>
											<input type="number" placeholder="참가비를 입력해주세요"
												autocomplete="" autocorrect="off" autocapitalize="none"
												spellcheck="false" data-v-0d46a6dc>
											<!---->
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>실력
										</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div class="grid-3" data-v-da260252 data-v-3fd80680>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>최상</div>
													</div></a>
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>상</div>
													</div></a>
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>중</div>
													</div></a>
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>하</div>
													</div></a>
											</div>
											<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
												<a href="/matches/new" aria-current="page" fg-size="default"
													fg-theme="default"
													class="nuxt-link-exact-active nuxt-link-active"
													style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
													data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
														<div class="text" data-v-bb65a0aa>최하</div>
													</div></a>
											</div>
										</div>
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display:;" data-v-da260252>내용
										</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<!---->
									</div>
								</div>
								<div class="gap" data-v-3fd80680></div>
								<div fg-component="field" data-v-da260252 data-v-3fd80680>
									<div class="header" data-v-da260252>
										<div class="title" style="display: none;" data-v-da260252>

										</div>
										<div class="message" style="display: none;" data-v-da260252>

										</div>
									</div>
									<div class="slot" data-v-da260252>
										<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
											<a href="/matches/new" aria-current="page" fg-size="big"
												fg-theme="primary"
												class="nuxt-link-exact-active nuxt-link-active"
												style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
												data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
													<div class="text" data-v-bb65a0aa>작성 완료</div>
												</div></a>
										</div>
									</div>
								</div>
							</div>
							<div class="buttons" data-v-3fd80680>
								<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
									<a href="/matches" fg-size="big" fg-theme="default"
										class="nuxt-link-active"
										style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
										data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
											<div class="text" data-v-bb65a0aa>작성 취소</div>
										</div></a>
								</div>
								<div fg-component="button" data-v-bb65a0aa data-v-3fd80680>
									<a href="/matches/new" aria-current="page" fg-size="big"
										fg-theme="primary"
										class="nuxt-link-exact-active nuxt-link-active"
										style="-background-color: white; - -background-hover-color: black; - -border-color: black;"
										data-v-bb65a0aa><div class="button" data-v-bb65a0aa>
											<div class="text" data-v-bb65a0aa>작성 완료</div>
										</div></a>
								</div>
							</div>
							<!---->
						</div>
					</div>
					<!---->
					<!---->
					<div pg-component="sidebar" data-v-a26a7288>
						<div class="close-area" data-v-a26a7288></div>
						<div class="contents-box" data-v-a26a7288>
							<div class="close-button" data-v-a26a7288></div>
							<div class="menus" data-v-a26a7288>
								<a href="/brand" data-value="brand" class="menu" data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMjggMTI4Ij48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9PC9zdHlsZT48L2RlZnM+PGcgaWQ9IkxheWVyXzIiIGRhdGEtbmFtZT0iTGF5ZXIgMiI+PGcgaWQ9IkxheWVyXzEtMiIgZGF0YS1uYW1lPSJMYXllciAxIj48Y2lyY2xlIGN4PSI2NCIgY3k9IjY0IiByPSI2NCIvPjxwb2x5Z29uIGNsYXNzPSJjbHMtMSIgcG9pbnRzPSI5Mi4yMyA0My44MyAzNS43NyA0My44MyAyNi4zNiA0My44MyAyNi4zNiA1My4yNCAyNi4zNiA4Ni4xNyAzNS43NyA4Ni4xNyAzNS43NyA1My4yNCA5Mi4yMyA1My4yNCA5Mi4yMyA4Ni4xNyAxMDEuNjQgODYuMTcgMTAxLjY0IDUzLjI0IDEwMS42NCA0My44MyA5Mi4yMyA0My44MyIvPjwvZz48L2c+PC9zdmc+"
									class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>소개</div></a> <a href="/notices"
									data-value="notice" class="menu" data-v-a26a7288><img
									src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDI0LjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA0NjAuOSA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ2MC45IDUxMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8ZyBpZD0iTGF5ZXJfMl8xXyI+Cgk8ZyBpZD0iTGF5ZXJfMS0yIj4KCQk8cGF0aCBkPSJNMzU4LjksMjMwLjVIMTAydjUxaDI1Ni45VjIzMC41eiBNNDEwLDUxaC0yNS41VjBoLTUxdjUxSDEyNy42VjBoLTUxdjUxSDUxQzIyLjgsNTEsMCw3My44LDAsMTAydjM1OQoJCQljMCwyOC4yLDIyLjgsNTEsNTEsNTFoMzU4LjljMjguMiwwLDUxLTIyLjgsNTEtNTFWMTAyQzQ2MS45LDczLjksNDM4LjEsNTEsNDEwLDUxeiBNNDEwLDQ2MUg1MVYxNzguNmgzNTguOUw0MTAsNDYxegoJCQkgTTI4MS41LDMzMi41SDEwMnY1MWgxNzkuNVYzMzIuNXoiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K"
									class="icon"
									style="-webkit-transform: scale(0.86); -ms-transform: scale(0.86); transform: scale(0.86);"
									data-v-a26a7288>
									<div class="text" data-v-a26a7288>
										공지사항
										<!---->
									</div></a> <a href="/events" data-value="event" class="menu"
									data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA1MTIgNDkxLjQiPjxnIGlkPSJMYXllcl8yIiBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBhdGggZD0iTTUxMiwxOTAuNmMwLDQuNy0yLjgsOS4zLTguNCwxNC45TDM5MS41LDMxNC44LDQxNy43LDQ2OXY2LjVjMCw0LjctLjksOC40LTIuOCwxMS4yYTExLjU1LDExLjU1LDAsMCwxLTkuMyw0LjcsMjAuMzksMjAuMzksMCwwLDEtMTIuMS0zLjdMMjU1LjIsNDEzLjksMTE2LjksNDg2LjhjLTQuNywyLjgtOC40LDMuNy0xMi4xLDMuNy00LjcsMC03LjUtMS45LTkuMy00LjdzLTIuOC02LjUtMi44LTExLjJhMjEuNjksMjEuNjksMCwwLDEsLjktNi41bDI2LjItMTU0LjJMNy41LDIwNC42QzEuOSwxOTksMCwxOTQuMywwLDE4OS42YzAtNy41LDUuNi0xMi4xLDE3LjgtMTRsMTU1LjEtMjIuNEwyNDIsMTMuMUMyNDUuNyw0LjcsMjUxLjMsMCwyNTYuOSwwczExLjIsNC43LDE0LjksMTMuMUwzNDEsMTUzLjJsMTU1LjEsMjIuNEM1MDYuNCwxNzguNCw1MTIsMTgzLjEsNTEyLDE5MC42WiIvPjwvZz48L2c+PC9zdmc+"
									class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>
										이벤트
										<!---->
									</div></a> <a href="/contact" data-value="contact" class="menu"
									data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNzQuMjQgMTM5LjM5Ij48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iQ2FwYV8xIiBkYXRhLW5hbWU9IkNhcGEgMSI+PHBhdGggZD0iTTE0Ni42MSwwaC0xMTlBMjcuNjcsMjcuNjcsMCwwLDAsMCwyNy42M3Y4NC4xM2EyNy42NywyNy42NywwLDAsMCwyNy42MywyNy42M2gxMTlhMjcuNjcsMjcuNjcsMCwwLDAsMjcuNjMtMjcuNjNWMjcuNjNBMjcuNjcsMjcuNjcsMCwwLDAsMTQ2LjYxLDBabS0xLjE0LDE0Ljk0TDg3LjExLDYwLjI0LDI4Ljc2LDE0Ljk0Wm0xMy44Myw5Ni44MmExMi43MSwxMi43MSwwLDAsMS0xMi42OSwxMi43aC0xMTlhMTIuNzIsMTIuNzIsMCwwLDEtMTIuNy0xMi43VjI3LjYzYTEyLjU3LDEyLjU3LDAsMCwxLC43MS00bDY2LjksNTEuOTRhNy40Nyw3LjQ3LDAsMCwwLDkuMTYsMGw2Ni45LTUxLjk0YTEyLjUyLDEyLjUyLDAsMCwxLC43MSw0djg0LjEzWiIvPjwvZz48L2c+PC9zdmc+"
									class="icon"
									style="-webkit-transform: scale(0.9); -ms-transform: scale(0.9); transform: scale(0.9);"
									data-v-a26a7288>
									<div class="text" data-v-a26a7288>문의하기</div></a>
								<div class="divider" data-v-a26a7288></div>
								<a href="/reports" data-value="report" class="menu"
									data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMzMuMDMgMjMzLjAzIj48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2YzMzt9PC9zdHlsZT48L2RlZnM+PGcgaWQ9IkxheWVyXzIiIGRhdGEtbmFtZT0iTGF5ZXIgMiI+PGcgaWQ9IkxheWVyXzEtMiIgZGF0YS1uYW1lPSJMYXllciAxIj48cmVjdCBjbGFzcz0iY2xzLTEiIHg9IjE2LjM1IiB5PSI1MS45MSIgd2lkdGg9IjIwMC4zNCIgaGVpZ2h0PSIxMjkuMjEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC00OC4yNiAxMTYuNTIpIHJvdGF0ZSgtNDUpIi8+PC9nPjwvZz48L3N2Zz4="
									class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>블랙리스트</div></a> <a href="/videos"
									data-value="report" class="menu" data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA1MTIgMzU4LjQ4Ij48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6cmVkO30uY2xzLTJ7ZmlsbDojZmZmO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTUwMS40NSw1Ni4wOUE2NC4xNSw2NC4xNSwwLDAsMCw0NTYuMzMsMTFDNDE2LjI2LDAsMjU2LDAsMjU2LDBTOTUuNzMsMCw1NS42NywxMC41NUE2NS40Niw2NS40NiwwLDAsMCwxMC41NCw1Ni4wOUMwLDk2LjE2LDAsMTc5LjI0LDAsMTc5LjI0czAsODMuNTEsMTAuNTQsMTIzLjE1YTY0LjE4LDY0LjE4LDAsMCwwLDQ1LjEzLDQ1LjEzYzQwLjQ5LDExLDIwMC4zMywxMSwyMDAuMzMsMTFzMTYwLjI2LDAsMjAwLjMzLTEwLjU0YTY0LjE2LDY0LjE2LDAsMCwwLDQ1LjEzLTQ1LjEzQzUxMiwyNjIuNzUsNTEyLDE3OS42Niw1MTIsMTc5LjY2UzUxMi40Miw5Ni4xNiw1MDEuNDUsNTYuMDlaIi8+PHBhdGggY2xhc3M9ImNscy0yIiBkPSJNMjA1LDI1NmwxMzMuMjctNzYuNzZMMjA1LDEwMi40OFoiLz48L2c+PC9nPjwvc3ZnPg=="
									class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>영상</div></a>
								<div class="divider" data-v-a26a7288></div>
								<div class="comment" data-v-a26a7288>SNS에서 풋볼그라운드의 소식을
									들어보세요.</div>
								<a data-value="facebook"
									href="https://www.facebook.com/FootballGroundOfficial/"
									target="_blank" class="menu" data-v-a26a7288><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNjAuMSAyNjAuMSI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOiMxOTc3ZjM7fS5jbHMtMSwuY2xzLTJ7ZmlsbC1ydWxlOmV2ZW5vZGQ7fS5jbHMtMntmaWxsOiNmZWZlZmU7fTwvc3R5bGU+PC9kZWZzPjxnIGlkPSJMYXllcl8yIiBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGlkPSJMYXllcl8xLTIiIGRhdGEtbmFtZT0iTGF5ZXIgMSI+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjYwLjEsMTMwLjA1QTEzMC4wNSwxMzAuMDUsMCwxLDAsMTA5LjczLDI1OC41MlYxNjcuNjVoLTMzdi0zNy42aDMzVjEwMS4zOWMwLTMyLjU5LDE5LjQyLTUwLjYsNDkuMTItNTAuNkEyMDAuMTYsMjAwLjE2LDAsMCwxLDE4OCw1My4zM3YzMkgxNzEuNTZjLTE2LjE1LDAtMjEuMTksMTAtMjEuMTksMjAuMzJ2MjQuNGgzNi4wNmwtNS43NiwzNy42aC0zMC4zdjkwLjg3QTEzMC4wNiwxMzAuMDYsMCwwLDAsMjYwLjEsMTMwLjA1WiIvPjxwYXRoIGNsYXNzPSJjbHMtMiIgZD0iTTE4MC42NywxNjcuNjVsNS43Ni0zNy42SDE1MC4zN3YtMjQuNGMwLTEwLjI4LDUtMjAuMzIsMjEuMTktMjAuMzJIMTg4di0zMmEyMDAuMTYsMjAwLjE2LDAsMCwwLTI5LjEyLTIuNTRjLTI5LjcsMC00OS4xMiwxOC00OS4xMiw1MC42djI4LjY2aC0zM3YzNy42aDMzdjkwLjg3YTEzMS40NiwxMzEuNDYsMCwwLDAsNDAuNjQsMFYxNjcuNjVaIi8+PC9nPjwvZz48L3N2Zz4="
									class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>페이스북</div></a> <a
									data-value="instagram"
									href="https://www.instagram.com/footballground_official"
									target="_blank" class="menu" data-v-a26a7288><img
									src="/_nuxt/img/7d1d52b.svg" class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>인스타그램</div></a> <a
									data-value="kakao" href="https://pf.kakao.com/_ZHJCT"
									target="_blank" class="menu" data-v-a26a7288><img
									src="/_nuxt/img/2558e1b.svg" class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>카카오 채널</div></a> <a
									data-value="naver"
									href="https://cafe.naver.com/footballgroundkr" target="_blank"
									class="menu" data-v-a26a7288><img
									src="/_nuxt/img/4f7978f.png" class="icon" data-v-a26a7288>
									<div class="text" data-v-a26a7288>네이버 카페</div></a>
							</div>
						</div>
					</div>
					<div pg-component="footer" data-v-2f889624>
						<div class="contents-box" data-v-2f889624>
							<div class="buttons" data-v-2f889624>
								<a href="/notices" class="button" data-v-2f889624> 공지사항 </a> <a
									href="/events" class="button" data-v-2f889624> 이벤트 </a> <a
									href="/terms" class="button" data-v-2f889624> 서비스 이용약관 </a> <a
									href="/privacy-policy" class="button" data-v-2f889624> 개인정보
									취급방침 </a>
								<div class="sns-buttons" data-v-2f889624>
									<a href="https://pf.kakao.com/_ZHJCT" target="_blank"
										class="sns-button" data-v-2f889624><img
										src="/_nuxt/img/0a6f274.svg" class="image" data-v-2f889624></a>
									<a href="https://www.facebook.com/FootballGroundOfficial/"
										target="_blank" class="sns-button" data-v-2f889624><img
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMS42MiAyMy4xIj48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9PC9zdHlsZT48L2RlZnM+PGcgaWQ9IkxheWVyXzIiIGRhdGEtbmFtZT0iTGF5ZXIgMiI+PGcgaWQ9IkNhcGFfMSIgZGF0YS1uYW1lPSJDYXBhIDEiPjxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTIuNTIsNC40NnEwLS4yMy4wNi0uOTNBMy40MiwzLjQyLDAsMCwxLDMuMTIsMiw0LjM0LDQuMzQsMCwwLDEsNC42OC42Miw2LjQsNi40LDAsMCwxLDcuOCwwaDMuODJWNC4xNkg4LjgyYTEuMTYsMS4xNiwwLDAsMC0uNzcuMzEuODYuODYsMCwwLDAtLjM1LjU4VjcuNjRoMy45MmMwLC41MS0uMDksMS0uMTQsMS40OGwtLjE2LDEuMjZjLS4wNi40Mi0uMTIuODItLjE4LDEuMThINy42N1YyMy4xSDIuNTJWMTEuNTZIMFY3LjY0SDIuNTJaIi8+PC9nPjwvZz48L3N2Zz4="
										class="image" data-v-2f889624></a> <a
										href="https://www.instagram.com/footballground_official"
										target="_blank" class="sns-button" data-v-2f889624><img
										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDI0LjEuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkNhcGFfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiCgkgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiBmaWxsPSJ3aGl0ZSI+CjxnPgoJPGc+CgkJPHBhdGggY2xhc3M9InN0MCIgZD0iTTM1MiwwSDE2MEM3MS42LDAsMCw3MS42LDAsMTYwdjE5MmMwLDg4LjQsNzEuNiwxNjAsMTYwLDE2MGgxOTJjODguNCwwLDE2MC03MS42LDE2MC0xNjBWMTYwCgkJCUM1MTIsNzEuNiw0NDAuNCwwLDM1MiwweiBNNDY0LDM1MmMwLDYxLjgtNTAuMiwxMTItMTEyLDExMkgxNjBjLTYxLjgsMC0xMTItNTAuMi0xMTItMTEyVjE2MEM0OCw5OC4yLDk4LjIsNDgsMTYwLDQ4aDE5MgoJCQljNjEuOCwwLDExMiw1MC4yLDExMiwxMTJWMzUyeiIvPgoJPC9nPgo8L2c+CjxnPgoJPGc+CgkJPHBhdGggY2xhc3M9InN0MCIgZD0iTTI1NiwxMjhjLTcwLjcsMC0xMjgsNTcuMy0xMjgsMTI4czU3LjMsMTI4LDEyOCwxMjhzMTI4LTU3LjMsMTI4LTEyOFMzMjYuNywxMjgsMjU2LDEyOHogTTI1NiwzMzYKCQkJYy00NC4xLDAtODAtMzUuOS04MC04MGMwLTQ0LjEsMzUuOS04MCw4MC04MHM4MCwzNS45LDgwLDgwQzMzNiwzMDAuMSwzMDAuMSwzMzYsMjU2LDMzNnoiLz4KCTwvZz4KPC9nPgo8Zz4KCTxnPgoJCTxjaXJjbGUgY2xhc3M9InN0MCIgY3g9IjM5My42IiBjeT0iMTE4LjQiIHI9IjE3LjEiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K"
										class="image" data-v-2f889624></a>
								</div>
							</div>
							<div class="information" data-v-2f889624>
								그라운드 모바일 | 대표: 박성현 | 고객센터: 카카오톡 <a
									href="http://pf.kakao.com/_ZHJCT/chat" target="_blank"
									data-v-2f889624>@풋볼그라운드</a> | 이메일: <a
									href="mailto:help@ground-mobile.com" data-v-2f889624>help@ground-mobile.com</a>
								| 주소: 경기도 부천시 소향로 131 일신빌딩 7층(워크리움 728호) | 유선전화: 1688-9140 |
								통신판매업 신고 번호: 제 2020-서울금천-2191호 | 소셜 경기 결제건에 대하여 취소, 환불 등은
								그라운드모바일에서 처리하며, 모든 책임은 당사에 있습니다. | COPYRIGHT GROUNDMOBILE ALL
								RIGHTS RESERVED. | CREATED BY BINGOSTUDIO
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		window.__NUXT__ = (function(a, b, c, d, e, f, g, h, i, j, k, l, m, n,
				o, p, q) {
			return {
				layout : "default",
				data : [ {} ],
				fetch : [],
				error : g,
				state : {
					auth : {
						user : {
							id : 7379,
							username : "kakao-1594429821",
							email : "ljk8003@naver.com",
							provider : "local",
							confirmed : f,
							blocked : c,
							role : {
								id : 1,
								name : "Authenticated",
								description : "Default role given to authenticated user.",
								type : "authenticated"
							},
							sex : h,
							phone : "01076370922",
							join_type : g,
							sns_id : g,
							level : h,
							name : "진영웅",
							age : "1995-09-21",
							area : i,
							created_at : "2021-01-13T11:51:22.873Z",
							updated_at : "2021-01-13T11:51:22.898Z",
							kakao_id : "1594429821",
							kakao_ci : "NJ2nXHGxdjlpYhlDY5aRUOXtQftoUzaqZRTUQ2w4dCXx7di1CEAFxNetlUCXK\u002FlOWcQPNnWtPOI92xW\u002Fhyj+6A==",
							subemail : g,
							profile : g,
							token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzM3OSwiaWF0IjoxNjEwNTQ2MTMzLCJleHAiOjE2MTMxMzgxMzN9.fg3wqJvmUKSbMhDfI0jN1BJa9xfLlmEBO3_Ymf5bdds"
						}
					},
					filter : {
						matchAreas : [],
						matchStartDate : j,
						matchEndDate : j,
						matchSort : "start_date_time:ASC"
					},
					layout : {
						headerFixed : j,
						sidebarOpened : c,
						matchAreasPopupOpened : c,
						matchDatesPopupOpened : c
					},
					route : {
						name : "matches-new",
						path : k,
						hash : i,
						query : {},
						params : {},
						fullPath : k,
						meta : {},
						from : {
							name : g,
							path : l,
							hash : i,
							query : {},
							params : {},
							fullPath : l,
							meta : {}
						}
					}
				},
				serverRendered : f,
				routePath : k,
				apollo : {
					defaultClient : Object
							.create(
									null,
									{
										"Area:12" : {
											writable : true,
											enumerable : true,
											value : {
												id : "12",
												city : e,
												area : "도봉\u002F노원\u002F강북\u002F중랑",
												__typename : a
											}
										},
										"Area:13" : {
											writable : true,
											enumerable : true,
											value : {
												id : "13",
												city : e,
												area : "성북\u002F동대문\u002F종로",
												__typename : a
											}
										},
										"Area:14" : {
											writable : true,
											enumerable : true,
											value : {
												id : "14",
												city : e,
												area : "은평\u002F서대문\u002F마포",
												__typename : a
											}
										},
										"Area:15" : {
											writable : true,
											enumerable : true,
											value : {
												id : "15",
												city : e,
												area : "용산\u002F중구",
												__typename : a
											}
										},
										"Area:16" : {
											writable : true,
											enumerable : true,
											value : {
												id : "16",
												city : e,
												area : "성동\u002F광진\u002F강동",
												__typename : a
											}
										},
										"Area:17" : {
											writable : true,
											enumerable : true,
											value : {
												id : "17",
												city : e,
												area : "송파\u002F서초\u002F강남",
												__typename : a
											}
										},
										"Area:18" : {
											writable : true,
											enumerable : true,
											value : {
												id : "18",
												city : e,
												area : "양천\u002F구로\u002F영등포\u002F강서",
												__typename : a
											}
										},
										"Area:19" : {
											writable : true,
											enumerable : true,
											value : {
												id : "19",
												city : e,
												area : "금천\u002F관악\u002F동작",
												__typename : a
											}
										},
										"Area:2" : {
											writable : true,
											enumerable : true,
											value : {
												id : "2",
												city : d,
												area : "수원\u002F용인\u002F화성\u002F오산",
												__typename : a
											}
										},
										"Area:11" : {
											writable : true,
											enumerable : true,
											value : {
												id : "11",
												city : d,
												area : "의정부\u002F양주\u002F그 외",
												__typename : a
											}
										},
										"Area:3" : {
											writable : true,
											enumerable : true,
											value : {
												id : "3",
												city : d,
												area : "과천\u002F안양\u002F군포\u002F의왕",
												__typename : a
											}
										},
										"Area:4" : {
											writable : true,
											enumerable : true,
											value : {
												id : "4",
												city : d,
												area : "구리\u002F남양주\u002F하남",
												__typename : a
											}
										},
										"Area:5" : {
											writable : true,
											enumerable : true,
											value : {
												id : "5",
												city : d,
												area : "인천\u002F부천\u002F김포",
												__typename : a
											}
										},
										"Area:7" : {
											writable : true,
											enumerable : true,
											value : {
												id : "7",
												city : d,
												area : "고양\u002F파주",
												__typename : a
											}
										},
										"Area:8" : {
											writable : true,
											enumerable : true,
											value : {
												id : "8",
												city : d,
												area : "성남\u002F광주\u002F이천",
												__typename : a
											}
										},
										"Area:9" : {
											writable : true,
											enumerable : true,
											value : {
												id : "9",
												city : d,
												area : "시흥\u002F안산\u002F광명",
												__typename : a
											}
										},
										"Area:10" : {
											writable : true,
											enumerable : true,
											value : {
												id : "10",
												city : d,
												area : "평택\u002F안성",
												__typename : a
											}
										},
										ROOT_QUERY : {
											writable : true,
											enumerable : true,
											value : {
												"areas({\"sort\":\"city:DESC\"})" : [
														{
															type : b,
															generated : c,
															id : "Area:12",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:13",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:14",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:15",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:16",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:17",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:18",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:19",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:2",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:11",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:3",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:4",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:5",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:7",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:8",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:9",
															typename : a
														}, {
															type : b,
															generated : c,
															id : "Area:10",
															typename : a
														} ],
												"eventsConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})" : {
													type : b,
													generated : f,
													id : "$ROOT_QUERY.eventsConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})",
													typename : m
												},
												"noticesConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})" : {
													type : b,
													generated : f,
													id : "$ROOT_QUERY.noticesConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})",
													typename : n
												},
												misc : {
													type : b,
													generated : f,
													id : "$ROOT_QUERY.misc",
													typename : o
												}
											}
										},
										"$ROOT_QUERY.eventsConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}}).aggregate" : {
											writable : true,
											enumerable : true,
											value : {
												count : h,
												__typename : p
											}
										},
										"$ROOT_QUERY.eventsConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})" : {
											writable : true,
											enumerable : true,
											value : {
												aggregate : {
													type : b,
													generated : f,
													id : "$ROOT_QUERY.eventsConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}}).aggregate",
													typename : p
												},
												__typename : m
											}
										},
										"$ROOT_QUERY.noticesConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}}).aggregate" : {
											writable : true,
											enumerable : true,
											value : {
												count : h,
												__typename : q
											}
										},
										"$ROOT_QUERY.noticesConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}})" : {
											writable : true,
											enumerable : true,
											value : {
												aggregate : {
													type : b,
													generated : f,
													id : "$ROOT_QUERY.noticesConnection({\"where\":{\"created_at_gte\":\"2021-01-04T05:45:26.035Z\"}}).aggregate",
													typename : q
												},
												__typename : n
											}
										},
										"$ROOT_QUERY.misc" : {
											writable : true,
											enumerable : true,
											value : {
												facebook_url : "https:\u002F\u002Fwww.facebook.com\u002FFootballGroundOfficial\u002F",
												instagram_url : "https:\u002F\u002Fwww.instagram.com\u002Ffootballground_official",
												kakao_channel_url : "https:\u002F\u002Fpf.kakao.com\u002F_ZHJCT",
												naver_cafe_url : "https:\u002F\u002Fcafe.naver.com\u002Ffootballgroundkr",
												__typename : o,
												mail : "help@ground-mobile.com",
												address : "경기도 부천시 소향로 131 일신빌딩 7층(워크리움 728호) | 유선전화: 1688-9140 | 통신판매업 신고 번호: 제 2020-서울금천-2191호 | 소셜 경기 결제건에 대하여 취소, 환불 등은 그라운드모바일에서 처리하며, 모든 책임은 당사에 있습니다.",
												kakao_channel_name : "풋볼그라운드",
												kakao_chat_url : "http:\u002F\u002Fpf.kakao.com\u002F_ZHJCT\u002Fchat"
											}
										}
									})
				}
			}
		}("Area", "id", false, "경기", "서울", true, null, 0, "", void 0,
				"\u002Fmatches\u002Fnew", "\u002F", "EventConnection",
				"NoticeConnection", "Misc", "EventAggregator",
				"NoticeAggregator"));
	</script>
	<script src="/_nuxt/72675cad47849c83dd4e.js" defer></script>
	<script src="/_nuxt/d4768f4004b42ceb0918.js" defer></script>
	<script src="/_nuxt/cff8bb471e08456444cb.js" defer></script>
	<script src="/_nuxt/0fa5553f3eeb1eb8d992.js" defer></script>
	<script src="/_nuxt/318d3ca45f96630523c3.js" defer></script>
	<script src="/_nuxt/ee2f17b885bbecf86771.js" defer></script>
</body>
</html>
