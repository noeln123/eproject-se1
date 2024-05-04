function car1Select(element) {
    let selected = element.value;
    let toyotaModels = ['Camry', 'Corolla Altis', 'Vios', 'Corolla Cross', 'Land Cruiser', 'Innova', 'Avanza', 'Hilux', 'Wigo']
    let kiaModels = [ 'Seltos', 'Morning', 'Soluto', 'Sonet', 'K3', 'Rondo', 'Carens', 'K5']
    let hyundaiModels = ['Accent', 'Venue', 'i10', 'Creta', 'Tucson', 'Elantra', 'Kona', 'Santafe']
    let models
    if (selected == 'Toyota') {
        models = toyotaModels
    } else if (selected == 'Kia') {
        models = kiaModels
    } else if (selected == 'Hyundai') {
        models = hyundaiModels
    }
    let car1model_elm = document.getElementById('car1model')
    while (car1model_elm.hasChildNodes()) {
        car1model_elm.removeChild(car1model_elm.firstChild);
    }
    //Add psudo option
    elm = document.createElement('option')
    elm.textContent = 'Choose one';
    elm.hidden = true;
    elm.selected = true;
    car1model_elm.appendChild(elm);
    //Add psudo option
    for (let i in models) {
        elm = document.createElement('option')
        elm.setAttribute("value", models[i]);
        elm.textContent = models[i];
        car1model_elm.appendChild(elm);
    }
    
};

function model1Select(element) {
    // when select model, change example img to model's img
    // also updateFormAction(id1, 0) to change action URL of form
    let toyotaModels = ['Camry', 'Corolla Altis', 'Vios', 'Corolla Cross', 'Land Cruiser', 'Innova', 'Avanza', 'Hilux', 'Wigo']
    let kiaModels = [ 'Seltos', 'Morning', 'Soluto', 'Sonet', 'K3', 'Rondo', 'Carens', 'K5']
    let hyundaiModels = ['Accent', 'Venue', 'i10', 'Creta', 'Tucson', 'Elantra', 'Kona', 'Santafe']
    let allModels = [...hyundaiModels, ...toyotaModels, ...kiaModels];
    let selectedModel = element.value;
    let selectedMake = document.getElementById('car1make').value
    if (selectedMake == "Toyota") {
        x = toyotaModels.indexOf(selectedModel) + 1 + 8
        // change img
        document.getElementById('carleft').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    } else if (selectedMake == "Hyundai") {
        x = hyundaiModels.indexOf(selectedModel) + 1
        // change img
        document.getElementById('carleft').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    } else {
        x = kiaModels.indexOf(selectedModel) + 1 + 17
        console.log(x)
        // change img
        document.getElementById('carleft').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    }
    document.getElementById('carleft').style.transform = "scaleX(-1)";
    document.getElementById('selectedCar1').value = allModels.indexOf(selectedModel) + 1
    updateFormAction(allModels.indexOf(selectedModel) + 1, 0)
}

function car2Select(element) {
    let selected = element.value;
    let toyotaModels = ['Camry', 'Corolla Altis', 'Vios', 'Corolla Cross', 'Land Cruiser', 'Innova', 'Avanza', 'Hilux', 'Wigo']
    let kiaModels = [ 'Seltos', 'Morning', 'Soluto', 'Sonet', 'K3', 'Rondo', 'Carens', 'K5']
    let hyundaiModels = ['Accent', 'Venue', 'i10', 'Creta', 'Tucson', 'Elantra', 'Kona', 'Santafe']
    let models
    if (selected == 'Toyota') {
        models = toyotaModels
    } else if (selected == 'Kia') {
        models = kiaModels
    } else if (selected == 'Hyundai') {
        models = hyundaiModels
    }
    let car1model_elm = document.getElementById('car2model')
    while (car1model_elm.hasChildNodes()) {
        car1model_elm.removeChild(car1model_elm.firstChild);
    }
    //Add psudo option
    elm = document.createElement('option')
    elm.textContent = 'Choose one';
    elm.hidden = true;
    elm.selected = true;
    car1model_elm.appendChild(elm);
    //Add psudo option
    for (let i in models) {
        elm = document.createElement('option')
        elm.setAttribute("id", models[i]);
        elm.textContent = models[i];
        car1model_elm.appendChild(elm);
    }
    
};

function model2Select(element) {
    // when select model, change example img to model's img
    let toyotaModels = ['Camry', 'Corolla Altis', 'Vios', 'Corolla Cross', 'Land Cruiser', 'Innova', 'Avanza', 'Hilux', 'Wigo']
    let kiaModels = [ 'Seltos', 'Morning', 'Soluto', 'Sonet', 'K3', 'Rondo', 'Carens', 'K5']
    let hyundaiModels = ['Accent', 'Venue', 'i10', 'Creta', 'Tucson', 'Elantra', 'Kona', 'Santafe']
    // Merge array: để tý gọi indexOf lấy ra ID
    let allModels = [...hyundaiModels, ...toyotaModels, ...kiaModels];
    let selectedModel = element.value;
    let selectedMake = document.getElementById('car2make').value
    if (selectedMake == "Toyota") {
        x = toyotaModels.indexOf(selectedModel) + 1 + 8
        // change img
        document.getElementById('carright').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    } else if (selectedMake == "Hyundai") {
        x = hyundaiModels.indexOf(selectedModel) + 1
        // change img
        document.getElementById('carright').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    } else {
        x = kiaModels.indexOf(selectedModel) + 1 + 17
        console.log(x)
        // change img
        document.getElementById('carright').setAttribute('src', imgsUrl + '/' + `1_${x}.avif`)
    }
    document.getElementById('carright').style.transform = "none";
    document.getElementById('selectedCar2').value = allModels.indexOf(selectedModel) + 1
    updateFormAction(0, allModels.indexOf(selectedModel) + 1)
}

function updateFormAction(id1, id2) {
    //get current action and change id1 or id2
    if (id2 == 0) {
        //change id1
        let input = document.getElementById('form').href
        let output = input.replace(/(\d+)-(\d+)/, function(match, p1, p2) {
            // Replace p1 (match[1]) with "2" and p2 (match[2]) with "82"
            return id1 + "-" + p2;
        });
        document.getElementById('form').href = output
        // alert(output)

    } else {
        //change id2
        let input = document.getElementById('form').href
        let output = input.replace(/(\d+)-(\d+)/, function(match, p1, p2) {
            // Replace p1 (match[1]) with "2" and p2 (match[2]) with "82"
            return p1 + "-" + id2;
        });
        document.getElementById('form').href = output
    }
    
}

$(document).ready(function(){
    car1Select(document.getElementById('car1make'))
    car2Select(document.getElementById('car2make'))
});