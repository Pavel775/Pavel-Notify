window.addEventListener('message', function(event) {
    if (event.data.action === 'show') {
        const notification = document.createElement('div');
        notification.className = 'notification';
        notification.innerHTML = `
            <h3>${event.data.title}</h3>
            <p>${event.data.message}</p>
        `;
        document.getElementById('notification-container').appendChild(notification);

        setTimeout(() => {
            notification.style.animation = 'fadeOut 0.5s';
            setTimeout(() => {
                notification.remove();
            }, 500);
        }, event.data.duration);
    }
});