function sendHeightRepeatedly() {
    let lastHeight = 0;
    let attempts = 0;
 
    const interval = setInterval(() => {
        const newHeight = document.body.scrollHeight;

        if (newHeight !== lastHeight) {
            parent.postMessage(newHeight, "*");
            lastHeight = newHeight;
        }
 
        attempts++;

        if (attempts > 20) {
            clearInterval(interval);
        }
    }, 150);
}
 
window.onload = sendHeightRepeatedly;
window.onresize = sendHeightRepeatedly;