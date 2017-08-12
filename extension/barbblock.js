
var urls = [
    // empty list initially; all additions should link to a GitHub issue.
];

chrome.webRequest.onBeforeRequest.addListener(
    (details) => ({cancel: true}),
    {urls: urls},
    ["blocking"]
);
