package vn.myclass.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.myclass.command.ExerciseQuestionCommand;
import vn.myclass.core.common.util.SessionUtil;
import vn.myclass.core.dto.ExerciseQuestionDTO;
import vn.myclass.core.service.ExerciseQuestionService;
import vn.myclass.core.service.impl.ExerciseQuestionServiceImpl;
import vn.myclass.core.web.utils.FormUtil;

@WebServlet(urlPatterns = {"/xac-nhan-cham-diem-bai-tap.html"})
public class ExerciseQuestionAnswerController extends HttpServlet {
	
	private ExerciseQuestionService exerciseQuestionService;
	
	public ExerciseQuestionAnswerController() {
		exerciseQuestionService = new ExerciseQuestionServiceImpl();
	}
	
	private static final long serialVersionUID = -8803444210235152094L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExerciseQuestionCommand command = FormUtil.populate(ExerciseQuestionCommand.class, request);
		Integer exerciseQuestionId = command.getPojo().getExerciseQuestionId();
		String answerUser = command.getAnswerUser();
		ExerciseQuestionDTO exerciseQuestionDTO = exerciseQuestionService.confirmExercisePoint(exerciseQuestionId, answerUser);
		if (SessionUtil.getInstance().getValue(request, "confirm-point-exercise") != null) {
			List<ExerciseQuestionDTO> exerciseQuestionDTOs = (List<ExerciseQuestionDTO>) SessionUtil.getInstance().getValue(request, "confirm-point-exercise");
			exerciseQuestionDTOs.add(exerciseQuestionDTO);
		}
		//SessionUtil.getInstance().putValue(request, "confirm-point-exercise", excelValues);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}