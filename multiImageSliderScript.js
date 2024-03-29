function slider(container, nav){
    this.container=container;
    this.nav=nav.hide(); // This will assign 'nav' from parameters to 'nav' of current slider instance. It uses method chaining.
    this.imgs=this.container.find('.slides'); // Returns jQuery object containing all matched elements.
    console.log('Value of this.imgs is : '+this.imgs);
    this.width=this.imgs[0].width;
    console.log('Value of width is : '+this.width);
    this.imgLen=this.imgs.length; // Returns the total number of sliding elements.
    /*  Initialize the "current" counter. 
        This counter keeps track of the index of current slide in the unordered list of elements. 
        This will be used for calculating the required displacement.
    */
    this.current=0; 
}
 
// This method will apply the needed animation and displacement.
slider.prototype.transition=function(coords){
    this.container.animate({
        'margin-left': coords || -(this.current*this.width+35*this.current) // First element is multiplied by Zero. The number 35 is the actual gap between two slides.
    },500);
};
 
// This method will set the "current" counter to next position.
slider.prototype.setCurrentPos=function(dir){
    var pos=this.current;
    console.log('Value of this.value is : '+dir);
    // It'll check which button is pressed and accordingly increments or decrements the 'pos' variable.
    pos+= ~~(dir=='next') || -1; // You can use alternate "Math.floor()" method instead of double tilde (~~) operator.
    this.current=(pos<0)?this.imgLen-3: pos%(this.imgLen-2);
    console.log(this.current);
     
};/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


