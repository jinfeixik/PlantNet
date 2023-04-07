function setupCascadeSelect(cascadeSelect, parent, nodes, isOnChange) {
  if (isOnChange == null){
    isOnChange = false;
  }
  cascadeSelect.onchange = function (){
    setupCascadeSelect(this, this.options[this.selectedIndex].value, nodes, true);
  };
  cascadeSelect.getAttr = function (attrName) {
    return this[attrName] ? this[attrName] : this.getAttribute(attrName);
  };
  cascadeSelect.getElementById = function (id) {
    return this.form.elements[id] ? this.form.elements[id]: document.getElementById(id);
  };
  cascadeSelect.setDisplayStyle = function(value) {
    if (!this.multiple){
      this.style.display = value;
    }
    var subElement = this.getElementById(this.getAttr("subElement"));
    if (subElement != undefined){
      subElement.setDisplayStyle = this.setDisplayStyle;
    }
  };
  nodes.getChildNodesByParent = function (parent) {
    var childNodes = new Array();
    if (parent + "" == ""){
      return childNodes;
    }
    for (var i = 0; i < nodes.length; i++){
      if (nodes[i][0] != undefined && nodes[i][0] == parent){
        childNodes[childNodes.length] = nodes[i];
      }
    }
    return childNodes;
  }
  if(!isOnChange){
    cascadeSelect.options.length = 0;
    var defaultText = cascadeSelect.getAttr("defaultText");
    var defaultValue = cascadeSelect.getAttr("defaultValue");
    var selectedValue = cascadeSelect.getAttr("selectedValue");
    if (defaultText != undefined && defaultValue != undefined){
      cascadeSelect.options[cascadeSelect.options.length] = new Option(defaultText, defaultValue);
    }
    var childNodes = nodes.getChildNodesByParent(parent);
    for (var i = 0; i < childNodes.length; i++){
      cascadeSelect.options[cascadeSelect.options.length] = new Option(childNodes[i][1], childNodes[i][2]);
      if (selectedValue != undefined && selectedValue == childNodes[i][2]){
        cascadeSelect.selectedIndex = cascadeSelect.options.length - 1;
      }
    }
  }
  if (cascadeSelect.options.length > 0){
    cascadeSelect.setDisplayStyle("");
    var subElement = cascadeSelect.getElementById(cascadeSelect.getAttr("subElement"));
    if (subElement != undefined){
      setupCascadeSelect(subElement, cascadeSelect.options[cascadeSelect.selectedIndex].value, nodes, false);
    }
  } else {
    cascadeSelect.setDisplayStyle("none");
  }
}
/**
 * 以类的方法实现连动
 */
function CascadeSelect(element, parent, nodes){
  this.form = element.form;
  this.nodes = nodes;
  this.attributes = {
    "subElement"    : "subElement",
    "defaultText"   : "defaultText",
    "defaultValue"  : "defaultValue",
    "selectedValue" : "selectedValue"
  }
  this.build(element, parent, false);
}
CascadeSelect.prototype.getElementById = function (id) {
    return this.form.elements[id] ? this.form.elements[id]: document.getElementById(id);
};
CascadeSelect.prototype.getAttribute = function (element, attrName) {
    return element[attrName] ? element[attrName] : element.getAttribute(attrName);
};
CascadeSelect.prototype.getChildNodesByParent = function (parent) {
    var childNodes = new Array();
    if (parent + "" == ""){
      return childNodes;
    }
    for (var i = 0; i < this.nodes.length; i++){
      if (this.nodes[i][0] != undefined && this.nodes[i][0] == parent){
        childNodes[childNodes.length] = this.nodes[i];
      }
    }
    return childNodes;
  }
CascadeSelect.prototype.setDisplayStyle = function(element, value) {
  var cs = this;
    if (!element.multiple){
      element.style.display = value;
    }
    var subElement = this.getElementById(this.getAttribute(element, this.attributes["subElement"]));
    if (subElement != undefined){
      subElement.setDisplayStyle = function () {cs.setDisplayStyle;}
    }
  };
CascadeSelect.prototype.build = function (element, parent, isOnChange) {
  var cs = this;
  element.onchange = function () {
    cs.build(this, this.options[this.selectedIndex].value, true);
  }
  if(!isOnChange){
    element.options.length = 0;
    var defaultText = this.getAttribute(element, this.attributes["defaultText"]);
    var defaultValue = this.getAttribute(element, this.attributes["defaultValue"]);
    var selectedValue = this.getAttribute(element, this.attributes["selectedValue"]);
 //alert(selectedValue);
    if (defaultText != undefined && defaultValue != undefined){
      element.options[element.options.length] = new Option(defaultText, defaultValue);
    }
    var childNodes = this.getChildNodesByParent(parent);
    for (var i = 0; i < childNodes.length; i++){
      element.options[element.options.length] = new Option(childNodes[i][1], childNodes[i][2]);
   //alert("childNodes[i][2]:" + childNodes[i][2]);
      if (selectedValue != undefined && selectedValue == childNodes[i][2]){
  alert(selectedValue);
        element.selectedIndex = element.options.length - 1;
      }
    }
  }
  if (element.options.length > 0){
    this.setDisplayStyle(element, "");
    var subElement = this.getElementById(this.getAttribute(element, this.attributes["subElement"]));
    if (subElement != undefined){
      this.build(subElement, element.options[element.selectedIndex].value, false);
    }
  } else {
    this.setDisplayStyle(element, "none");
  }
}

var aryPType=[
             [0,'贵州省',1],
             [0,'甘肃省',2],
             [0,'云南省',3],
             [1,'贵阳市',4],
             [1,'遵义市',5],
             [1,'安顺市',6],
             [1,'六盘水',7],
             [1,'铜仁市',8],
             [1,'毕节市',9],
             [1,'兴义市',10],
             [1,'凯里市',11],
             [2,'兰州市',12],
             [2,'武威市',13],
             [2,'敦煌市',14],
             [2,'嘉峪关',15],
             [3,'昆明市',16],
             [3,'曲靖市',17],
             [3,'玉溪市',18],
             [3,'昭通市',19],
             [4,'乌当区',20],
             [4,'南明区',21],
             [4,'云岩区',22],
             [4,'花溪区',23],
             [4,'白云区',24],
             [4,'小河区',25],
             [5,'红花岗区',26],
             [5,'汇川区',27],
             [6,'平坝县',28],
             [6,'普定县',29],
             [6,'西秀区',30],
             [7,'钟山区',31],
             [7,'六枝特区',32],
             [7,'水城县',33],
             [7,'盘县',34],
             [8,'江口县',35],
             [8,'石阡县',36],
             [9,'大方县',37],
             [9,'金沙县',38],
             [10,'普定县',39],
             [10,'兴仁县',40],
             [11,'镇远县',41],
             [11,'三惠县',42],
             [12,'城关区',43],
             [12,'安宁区',44],
             [12,'红古区',45],
             [13,'古浪县',46],
             [13,'民勤县',47],
             [14,'瓜州县',48],
             [14,'高台县',49],
             [15,'嘉峪关',50],
             [16,'盘龙区',51],
             [16,'五华区',52],
             [17,'麒麟区',53],
             [18,'华宁区',54],
             [18,'江川县',55],
             [18,'易门县',56],
             [19,'威宁县',57],
             [19,'水富县',58],
             [19,'永善县',59],
             [20,'师院',60],
             [20,'情人谷',61],
             [21,'南通路',62],
             [22,'望洋路',63],
             [23,'北京路',64],
             [24,'遵义路',65],
             [25,'贵都路',66],
             [26,'都匀路',67],
             [27,'幸福路',68],
             [28,'大方路',69],
             [29,'开阳路',70],
             [30,'小康路',71],
             [31,'八宝街',72],
             [32,'君平街',73],
             [33,'方正街',74],
             [34,'琴台路',75],
             [35,'童子街',76],
             [36,'长发街',77],
             [37,'三多里',78],
             [38,'福兴街',79],
             [39,'岳府街',80],
             [40,'桓侯巷',81],
             [41,'十里巷',82],
             [42,'百寿路',83],
             [43,'千祥街',84],
             [44,'二仙桥',85],
             [45,'四道街',86],
             [46,'吴绍路',87],
             [47,'万福路',88],
             [48,'琉璃厂',89],
             [49,'九思巷',90],
             [50,'宝山路',91],
             [51,'省府路',92],
             [52,'沙巴街',93],
             [53,'长城路',94],
             [54,'富水巷',95],
             [55,'水乡路',96],
             [56,'汪家湾',97],
             [57,'小河巷',98],
             [58,'长城街',99],
             [59,'幸福巷',100],
             ]
window.onload = function(){
 form = document.forms[0];
 
 form.selP1.setAttribute("subElement", "selP2"); 
 form.selP2.setAttribute("subElement", "selP3");
 form.selP3.setAttribute("subElement", "selP4");
 
//  setupCascadeSelect(form.selP1, 0, aryPType, false);
new CascadeSelect(form.selP1, "0", aryPType);
};