//https://fakestoreapi.com/products

let grid = document.querySelector(".products");

fetch('https://fakestoreapi.com/products')
    .then(res => res.json())
    .then(json => {
        for (let value of json) {
            addElement(grid,value)

        }
    });

    //get value from API
function addElement(appendln, value) {
    let div = document.createElement('div');
    div.className = " row  col-md-4 "

    let { image, title, category, price } = value;
    div.innerHTML = `    <div class=" container-fluid row  col-md-5" style="display:none;" >
                    <div class="  row  col-md-4 " style="padding-left: 0.1%; z-index: 3!important; position: absolute; top: 20%; left: 34%;opacity:.9; ">
                        <div class="" style="margin-bottom:2px;">
                                <div class="row media col-mb-3 mb-3 ">
                                    <a class="col-md-2" style="margin-right: 0.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>
                                        <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="${image}">
                                    </a>
                                    &nbsp;<div class="media-body col-md-10 row img-thumbnail" style="display: flex; align-items: center; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5); font-size:12px;">
                                        
                                        <h5 id="ProducName"  runat="server" class="mt-0 font col-md-7 font_Cart"   style="font-size:12px; margin-bottom:0px;">${title}</h5>

                                        <div class=" col-md-5  proPrice" style="padding: 0;font-size:12px; text-align: end;">${price} <span class="proOgPrice" style="font-size:12px;">${price}</span>   <span class="discount" style="font-size:12px;">-${price}% </span></div>

                                    </div>
                                </div>

                          </div>

                    </div>
                </div>
                        

    `

    appendln.appendChild(div);
}