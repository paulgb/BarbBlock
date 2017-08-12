
var urls = [
    '*://functionalclam.com/*' // Issue #1
];

chrome.webRequest.onBeforeRequest.addListener(
    (details) => ({cancel: true}),
    {urls: urls},
    ["blocking"]
);
