package net.md.onlineshopping.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Payment {
	
	
	@RequestMapping(value = "/payment")
	public ModelAndView payment(@RequestParam String gd) {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Payment Gateway");
		mv.addObject("userClickPayment", true);
		mv.addObject("gdTot", gd);
		return mv;
	}
	
	@RequestMapping(value = "/payment/cod")
	public ModelAndView cod() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "COD Details");
		mv.addObject("userClickCODOption", true);
		return mv;
	}
	
	@RequestMapping(value = "/payment/card")
	public ModelAndView card() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Card Details");
		mv.addObject("userClickCardOption", true);
		return mv;
	}
	
	@RequestMapping(value = "/payment/netbank")
	public ModelAndView netbank() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Net Banking");
		mv.addObject("userClickNetBankOption", true);
		return mv;
	}
	
	@RequestMapping(value = "/payment/wallet")
	public ModelAndView wallet() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Wallet");
		mv.addObject("userClickWalletOption", true);
		return mv;
	}
	
	@RequestMapping(value = "/payment/upi")
	public ModelAndView upi() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "UPI Address");
		mv.addObject("userClickUPIOption", true);
		return mv;
	}

}
