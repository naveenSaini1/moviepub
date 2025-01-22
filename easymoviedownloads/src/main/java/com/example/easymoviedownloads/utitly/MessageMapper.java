package com.example.easymoviedownloads.utitly;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.example.easymoviedownloads.enums.ResponseType;
import com.example.easymoviedownloads.model.ResponseMessage;

@Component
public class MessageMapper {
	
	public <T> Map<String, ResponseMessage<T>> mapperForResponseMessage(ResponseMessage<T> responseMessage){
		Map<String,ResponseMessage<T>>		response			=		new HashMap<>();;
		ResponseMessage	<T>		needToAddInResponse			=		responseMessage;
			response.put(ResponseType.RESPONSE.toString(), needToAddInResponse);
			return response;
		
	}
	
	

}
