// Contact Us: Form pop-up
const contactForm = document.getElementById('contactForm');
if (contactForm) {
    contactForm.addEventListener('submit', function (e) {
        e.preventDefault();
        alert('Terima kasih! Pesan Anda telah kami terima.');
        this.reset();
    });
}


// Estimator
// Ambil elemen yang dibutuhkan
const serviceSelect = document.getElementById('serviceType');
const checkboxes = document.querySelectorAll('.form-check-input');
const displayPrice = document.getElementById('totalPriceDisplay');

function calculate() {
    let total = parseInt(serviceSelect.value) || 0;

    checkboxes.forEach(item => {
        if (item.checked) {
            total += parseInt(item.value);
        }
    });

    // Mengubah format angka ke nominal Rupiah
    displayPrice.innerText = new Intl.NumberFormat('id-ID', {
        style: 'currency',
        currency: 'IDR',
        maximumFractionDigits: 0
    }).format(total);
}

// Menjalankan fungsi setiap kali adanya perubahan input
if (serviceSelect) {
    serviceSelect.addEventListener('change', calculate);
}

checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', calculate);
});