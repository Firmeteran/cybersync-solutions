/* Contact Us: Form pop-up */
const contactForm = document.getElementById('contactForm');
if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
        e.preventDefault();
        alert('Terima kasih! Pesan Anda telah kami terima.');
        this.reset();
    });
}

/* Estimator */