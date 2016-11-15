<?php

class HcarAction extends WapAction {

	public function index(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->display();

	}
	public function aiqing(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->display();

	}
	public function xinqing(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->display();

	}
	public function shengri(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->display();

	}
	public function zhufu(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->display();

	}
	public function hcar_view(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$cardid=$this->_get('cardid');
		if($cardid==""){
			echo "非法操作";
			exit;
		}
		$t_carreplay=M('Hcarreplay')->where('id='.$id)->find();
		$this->assign('fxlj',$t_carreplay['lj']);
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->assign('cardid',$cardid);
		$this->display($cardid.'_view');
	}
	public function hcar_make(){
	
		$wecha_id= $this->_get('wecha_id');
		$token = $this->_get('token');
		$id=$this->_get('id');
		$message=$this->_get('message');
		$cardid=$this->_get('cardid');
		$action=$this->_get('action');
		$t_hcar=M('Hcar');
		$hcar=$t_hcar->where(array('token'=>$token))->select();
		if($cardid==""){
			echo "非法操作";
			exit;
		}
		if($message){
			$arr = array("，" => "，<br>", "。" => "。<br>","！"=>"！<br>","？"=>"？<br>");
			$message=strtr($message,$arr);
		}
		$this->assign('token',$token);
		$this->assign('wecha_id',$wecha_id);
		$this->assign('id',$id);
		$this->assign('cardid',$cardid);
		$this->assign('hcar',$hcar);
		$this->assign('message',$message);
		if($action==1){
		$this->display($cardid.'_view');
		}else
		$this->display();
		

		
	}
	
}