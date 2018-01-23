package com.p2p.controller.front;

import java.util.List;

import com.p2p.pojo.Fabiao;
import com.p2p.service.front.FabiaoService;

public class BidUtilController {
	public static void setFabiao(FabiaoService fabiaoService) {
		//查流标
		List<Fabiao> lb = fabiaoService.selectlb();
		if(lb!=null) {
			for(int i=0;i<lb.size();i++) {
				fabiaoService.updatelb(4,lb.get(i).getFid());
			}
		}
		//查满标
		List<Fabiao> mb = fabiaoService.selectmb();
		if(mb!=null) {
			for(int i=0;i<mb.size();i++) {
				fabiaoService.updatelb(7,mb.get(i).getFid());
			}
		}
		//查还款标
		List<Fabiao> hkb = fabiaoService.selecthkb();
		if(hkb!=null) {
			for(int i=0;i<hkb.size();i++) {
				fabiaoService.updatelb(2,hkb.get(i).getFid());
			}
		}
	}
}
